#!/bin/bash
# 一键上传并打 v1 标签

# 1. 添加所有文件（遵循 .gitignore）
git add .

# 2. 提交到本地仓库
git commit -m "项目 v1 版本：上传所有代码和文档"
git commit -m "上传src/OpenPCDet"

# 3. 推送到远程 master 分支
git push -u origin master

# 4. 打 v1 标签
git tag v1

# 5. 推送标签到远程
git push origin v1

echo "✅ 已完成：代码推送到 master 并打上 v1 标签"

#强制推送（⚠️ 慎用）
git push -f origin master

git filter-repo --strip-blobs-bigger-than 100M --force
git remote add origin git@github.com:BigCator/CogniScope.git
git remote -v
git push -u origin master --force
git status

git add src/pcdet_ros2
git add src/ros2_numpy
git add train.py
git commit -m "修复有的代码未上传问题"
git push origin master

git submodule status

git rm --cached src/OpenPCDet # 从 Git index 中删除 submodule 记录
git rm --cached src/mmdetection3d src/pcdet_ros2 src/ros2_numpy src/AB3DMOT-master/AB3DMOT_libs
git push

