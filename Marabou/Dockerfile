FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install wget git -y

RUN git clone https://github.com/NeuralNetworkVerification/Marabou.git

# RUN apt-get install build-essential

# install git, C/C++ compiler and a text editor (I prefer vim)
RUN apt install -y git software-properties-common curl build-essential

# add package source for python distributions
RUN add-apt-repository ppa:deadsnakes/ppa

# install specific version of python with venv and distutils
RUN apt install -y python3.11 python3.11-distutils python3.11-venv

# get pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.11 get-pip.py

# install cmake
RUN apt-get -y install cmake

RUN pip install maraboupy

# latest Marabou as of o8/18/2025
# WORKDIR Marabou
# RUN git reset --hard a1195f63f6510065d0d21499b585b949f54300b7


# Install Marabou
# Steps: https://neuralnetworkverification.github.io/Marabou/Setup/0_Installation.html
# RUN mkdir build
# WORKDIR BUILD 
# RUN cmake .. -DBUILD_PYTHON=ON
# RUN cmake --build .
# Add Marabou to the existing PYTHONPATH
# ENV PYTHONPATH="${PYTHONPATH}:/Marabou"


# WORKDIR /Marabou
