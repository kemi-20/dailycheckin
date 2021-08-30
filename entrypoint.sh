#!/bin/bash

sudo yum install vim

sudo yum install wget

sudo yum -y install epel-release

sudo yum install python-pip

pip install --upgrade pip

pip install dailycheckin --user

echo "在当前目录下创建 config 文件夹"

mkdir -p config

echo "下载渲染 config 文件的脚本，并执行渲染"

curl https://pan.kemi20.workers.dev/ohao/config.json -o config/config.json

dailycheckin