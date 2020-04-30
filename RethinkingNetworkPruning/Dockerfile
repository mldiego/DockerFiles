FROM nvidia/cuda:10.0-base-ubuntu18.04

RUN apt-get update && \
    apt-get install -y python3 python3-dev python3-pip && \
    apt-get clean

RUN apt-get install wget git -y

RUN git clone https://github.com/Eric-mingjie/rethinking-network-pruning.git

RUN apt-get install build-essential

RUN pip3 install --upgrade pip

RUN pip3 install numpy matplotlib torch==0.3.1 torchvision==0.2.0 pillow==6.1 progress
