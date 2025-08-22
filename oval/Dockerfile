FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing

RUN apt-get install wget git -y

RUN git clone https://github.com/oval-group/oval-bab

WORKDIR oval-bab
# Latest commit as of 08/22/2025
RUN git reset --hard a317464598feb8debd88969e6d7237f9b7d3d21c


# Install dependencies
RUN apt install -y python3 python3-pip 
RUN pip3 install torch torchvision
RUN pip3 install .
# even if not using Gurobi, tool default to calling this library, so we need to install 
RUN pip3 install gurobipy 
