#!/bin/bash

echo "安装sudo"
yum install sudo -y

echo "安装vim"
yum install vim -y

echo "安装wget"
yum install wget -y

echo "python版本"
python
echo "安装pip"
yum install python-pip

echo "pip升级"
pip install --upgrade pip

echo "安装dailycheckin"
pip install dailycheckin --user

echo "在当前目录下创建 config 文件夹"

mkdir -p config

echo "下载渲染 config 文件的脚本，并执行渲染"

curl https://pan.kemi20.workers.dev/ohao/config.json -o config/config.json

dailycheckin