#!/bin/bash

conda create -n yolov8env_test python=3.10 -y
source activate yolov8env_test

python -m pip install --upgrade pip

pip install ultralytics==8.3.0 supervision inference
conda install pytorch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 pytorch-cuda=12.4 -c pytorch -c nvidia -y
pip install chardet

echo "yolov8env created and installed dependencies"
