./scripts/start_sensors_tmux.sh

常用tmux操作命令
命令	快捷键	功能
切换面板	Ctrl+B → 方向键	在面板间切换
重新加载配置	Ctrl+B, r	重启当前面板
滚动查看	Ctrl+B, [	进入滚动模式
退出滚动	q	退出滚动模式
关闭面板	Ctrl+B, x	关闭当前面板
分离会话	Ctrl+B, d	离开会话保持后台运行
重新连接	tmux attach -t sensors	重新连接会话

外部终止任务 tmux kill-session -t sensors
内部终止任务 ctrl+b : kill-session
