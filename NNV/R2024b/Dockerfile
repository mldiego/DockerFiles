FROM mathworks/matlab:r2024b

# like using sudo, need to use this to install packages for matlab image
USER root

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing

RUN apt-get install wget git -y

# RUN apt-get -y install git

# clone nnv
RUN git clone https://github.com/verivital/nnv
WORKDIR nnv

RUN ./install_ubuntu.sh

