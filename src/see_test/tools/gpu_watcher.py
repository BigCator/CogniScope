import os
import time
import re
import matplotlib.pyplot as plt
from datetime import datetime
from pynvml import *

# ===== 配置参数 =====
MIN_UTIL_THRESHOLD = 1          # 最低利用率百分比
MIN_MEMORY_THRESHOLD = 100      # 最低显存使用 MB（未启用）
ACTIVE_THRESHOLD = 5            # 启动记录前连续活跃秒数
INACTIVE_THRESHOLD = 10         # 停止记录前连续空闲秒数
LOG_DIR = "gpu_logs"            # 日志总目录


# ===== 工具函数 =====
def get_gpu_status(handle):
    mem_info = nvmlDeviceGetMemoryInfo(handle)
    util = nvmlDeviceGetUtilizationRates(handle)
    used_mb = mem_info.used / 1024 ** 2
    total_mb = mem_info.total / 1024 ** 2
    return used_mb, total_mb, util.gpu

def is_gpu_active(util_percent, mem_used_mb):
    return util_percent > MIN_UTIL_THRESHOLD
    # or mem_used_mb > MIN_MEMORY_THRESHOLD


def parse_log_file(log_path):
    timestamps, mem_usage, utils = [], [], []
    with open(log_path, "r") as f:
        for line in f:
            match = re.match(r"^(.*?) - GPU (\d+): ([\d.]+)/([\d.]+) MB, Utilization: (\d+)%$", line.strip())
            if match:
                timestamp_str = match.group(1)
                mem_used = float(match.group(3))
                util = int(match.group(5))
                timestamps.append(datetime.strptime(timestamp_str, "%Y-%m-%d %H:%M:%S"))
                mem_usage.append(mem_used)
                utils.append(util)
            else:
                print(f"[Warning] Failed to parse line: {line.strip()}")
    return timestamps, mem_usage, utils

def plot_gpu_log(log_path, mem_plot_path, util_plot_path):
    timestamps, mem_usage, utils = parse_log_file(log_path)
    if not timestamps:
        print(f"[Info] No data to plot for {log_path}")
        return

    # 显存图
    plt.figure(figsize=(10, 4))
    plt.plot(timestamps, mem_usage, label="Memory Usage (MB)")
    plt.xlabel("Time")
    plt.ylabel("Memory (MB)")
    plt.title("GPU Memory Usage")
    plt.grid(True)
    plt.tight_layout()
    plt.savefig(mem_plot_path)
    plt.close()
    print(f"[Saved] {mem_plot_path}")

    # 利用率图
    plt.figure(figsize=(10, 4))
    plt.plot(timestamps, utils, label="GPU Utilization (%)", color="orange")
    plt.xlabel("Time")
    plt.ylabel("Utilization (%)")
    plt.title("GPU Utilization")
    plt.grid(True)
    plt.tight_layout()
    plt.savefig(util_plot_path)
    plt.close()
    print(f"[Saved] {util_plot_path}")


# ===== GPU 监听对象封装 =====
class GPUTracker:
    def __init__(self, index, handle):
        self.index = index
        self.handle = handle
        self.active_count = 0
        self.inactive_count = 0
        self.monitoring = False
        self.log_file = None
        self.log_path = None
        self.log_dir = None

    def check_status_and_update(self):
        used, total, util = get_gpu_status(self.handle)

        if is_gpu_active(util, used):
            self.active_count += 1
            self.inactive_count = 0
        else:
            self.inactive_count += 1
            self.active_count = 0

        timestamp = time.strftime("%Y-%m-%d %H:%M:%S")
        if self.monitoring:
            log_line = f"{timestamp} - GPU {self.index}: {used:.1f}/{total:.1f} MB, Utilization: {util}%"
            print(log_line)
            self.log_file.write(log_line + "\n")
            self.log_file.flush()

        return util, used

    def start_monitoring(self):
        timestamp = time.strftime("%Y-%m-%d_%H-%M-%S")
        self.log_dir = os.path.join(LOG_DIR, f"gpu_{self.index}", timestamp)
        os.makedirs(self.log_dir, exist_ok=True)
        self.log_path = os.path.join(self.log_dir, "log.txt")
        self.log_file = open(self.log_path, "w")
        self.monitoring = True
        print(f"[Start] GPU {self.index} active. Logging to {self.log_path}")

    def stop_monitoring(self):
        if self.log_file:
            self.log_file.close()
        self.monitoring = False
        print(f"[Stop] GPU {self.index} idle. Finalizing logs...")

        # 输出图
        mem_plot_path = os.path.join(self.log_dir, "mem_plot.png")
        util_plot_path = os.path.join(self.log_dir, "util_plot.png")
        plot_gpu_log(self.log_path, mem_plot_path, util_plot_path)


# ===== 主函数 =====
def main():
    nvmlInit()
    os.makedirs(LOG_DIR, exist_ok=True)
    device_count = nvmlDeviceGetCount()
    print(f"[Info] Detected {device_count} GPU(s).")

    gpus = [GPUTracker(i, nvmlDeviceGetHandleByIndex(i)) for i in range(device_count)]

    try:
        while True:
            for gpu in gpus:
                util, used = gpu.check_status_and_update()

                if not gpu.monitoring and gpu.active_count >= ACTIVE_THRESHOLD:
                    gpu.start_monitoring()

                if gpu.monitoring and gpu.inactive_count >= INACTIVE_THRESHOLD:
                    gpu.stop_monitoring()

            time.sleep(1)
    finally:
        for gpu in gpus:
            if gpu.monitoring:
                gpu.stop_monitoring()
        nvmlShutdown()


if __name__ == "__main__":
    main()
