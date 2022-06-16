FROM nvidia/cuda:10.0-base-ubuntu18.04

RUN apt-get update && \
    apt-get install -y python3 python3-dev python3-pip && \
    apt-get clean

RUN apt-get install wget git -y

RUN apt-get install build-essential

RUN pip3 install --upgrade pip

RUN pip3 install pywick numpy matplotlib torch torchvision pillow progress
