import os
from pathlib import Path
from tqdm import tqdm


def fix_vod_labels(directory):
    print(
        "Replacing truncation values with 0. See https://github.com/tudelft-iv/view-of-delft-dataset/issues/8#issuecomment-1172435763")

    for filename in tqdm(os.listdir(directory)):
        if filename.endswith(".txt"):  # Assuming the label files are .txt files
            filepath = os.path.join(directory, filename)

            with open(filepath, "r") as file:
                lines = file.readlines()

            with open(filepath, "w") as file:
                for line in lines:
                    parts = line.split()
                    if len(parts) > 1:
                        parts[1] = "0"  # Change the second value to 0
                    new_line = " ".join(parts)
                    file.write(new_line + "\n")


def softlink_dataset(vod_dataset_dir, lidar_tgt_path="/home/dell/xzx_ws/see_test/data/lidar",
                     radar_tgt_path="/home/dell/xzx_ws/see_test/data/radar"):
    assert os.path.exists(vod_dataset_dir), "view_of_delft dataset folder doesnt exist."

    os.makedirs("/home/dell/xzx_ws/see_test/data", exist_ok=True)
    os.symlink(os.path.join(vod_dataset_dir, "lidar"), lidar_tgt_path, target_is_directory=True)
    print(f"vod lidar data softlinked to {lidar_tgt_path}")

    os.symlink(os.path.join(vod_dataset_dir, "radar"), radar_tgt_path, target_is_directory=True)
    print(f"vod radar data softlinked to {radar_tgt_path}")


def softlink_aux_data(data_root="/home/dell/xzx_ws/see_test/data"):
    print("softlinking lidar as aux modality for radar")
    # softlinking lidar as aux modality for radar
    os.symlink(os.path.join(data_root, "lidar", "training", "calib"),
               os.path.join(data_root, "radar", "training", "attach_calib"))

    os.symlink(os.path.join(data_root, "lidar", "training", "velodyne"),
               os.path.join(data_root, "radar", "training", "attach_lidar"))

    print("softlinking radar as aux modality for lidar")
    # softlinking radar as aux modality for lidar
    os.symlink(os.path.join(data_root, "radar", "training", "calib"),
               os.path.join(data_root, "lidar", "training", "attach_calib"))

    os.symlink(os.path.join(data_root, "radar", "training", "velodyne"),
               os.path.join(data_root, "lidar", "training", "attach_lidar"))


if __name__ == "__main__":
    # softlink_dataset("/home/dell/view_of_delft_PUBLIC")
    softlink_dataset("/home/dell/vod_carla")

    fix_vod_labels("/home/dell/xzx_ws/see_test/data/lidar/training/label_2")

    softlink_aux_data()
