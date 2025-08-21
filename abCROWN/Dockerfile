FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing

RUN apt-get install wget git -y

# Created a fork to ensure consistency
RUN git clone https://github.com/mldiego/alpha-beta-CROWN

# latest abCROWN as of 08/18/2025
WORKDIR alpha-beta-CROWN

# pull submodules
RUN git submodule update --init --recursive

RUN apt install -y git software-properties-common curl build-essential

# add package source for python distributions
RUN add-apt-repository ppa:deadsnakes/ppa

# install specific version of python with venv and distutils
RUN apt install -y python3.10 python3.10-distutils python3.10-venv

# get pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.10 get-pip.py


# Install abCROWN
RUN pip install torch torchvision
RUN pip install -r complete_verifier/requirements.txt

# Install autolirpa dependencies
WORKDIR auto_LiRPA
RUN pip install .

WORKDIR ../complete_verifier
