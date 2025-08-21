FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing

RUN apt-get install wget git -y

RUN git clone https://github.com/mldiego/neuralsat.git

WORKDIR neuralsat
RUN git checkout vnncomp25


# Install dependencies
RUN apt install -y python3 python3-pip 
RUN apt install -y psmisc
RUN pip3 install -r requirements.txt
