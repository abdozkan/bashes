#!/bin/bash

ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
    MINICONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
elif [ "$ARCH" == "aarch64" ]; then
    MINICONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh"
else
    exit 1
fi

wget $MINICONDA_URL -O Miniconda3-latest-Linux.sh
bash Miniconda3-latest-Linux.sh -b -p $HOME/miniconda3
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"

conda create -n yolov11env python=3.10 -y
conda activate yolov11env

python -m pip install --upgrade pip
conda install -c pytorch -c nvidia -c conda-forge pytorch torchvision pytorch-cuda ultralytics supervision chardet -y
