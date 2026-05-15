#!/bin/bash

sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirror.yandex.ru/ubuntu/|g' /etc/apt/sources.list.d/ubuntu.sources
apt update && apt install -y ffmpeg
sed -i 's|http://mirror.yandex.ru/ubuntu/|http://archive.ubuntu.com/ubuntu/|g' /etc/apt/sources.list.d/ubuntu.sources

pip install --break-system-packages jupyterlab ipywidgets librosa torchcodec numpy transformers seaborn tqdm matplotlib datasets