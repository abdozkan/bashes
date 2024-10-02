#!/bin/bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

conda create -n yolov8env python=3.10 -y
source activate yolov8env

python -m pip install --upgrade pip

pip install ultralytics==8.3.0 supervision inference
conda install pytorch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 pytorch-cuda=12.4 -c pytorch -c nvidia -y
pip install chardet

echo "miniconda & yolov8env created and installed dependencies"
