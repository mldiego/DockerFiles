FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing

# tar
RUN apt-get install xz-utils 

RUN apt-get install wget git -y

RUN git clone https://github.com/verivital/behaverify.git

# Install dependencies
RUN wget https://nuxmv.fbk.eu/theme/download.php?file=nuXmv-2.1.0-linux64.tar.xz -O ./nuXmv_DL.tar.xz
RUN tar -xf ./nuXmv_DL.tar.xz --one-top-level=nuXmv_DL --strip-components 1
RUN mv ./nuXmv_DL/bin/nuXmv ./nuXmv
RUN chmod +x nuXmv
WORKDIR behaverify
RUN apt install -y python3 python3-pip 
RUN python3 -m pip install .

