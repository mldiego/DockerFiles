FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y python3 python3-dev python3-pip && \
    apt-get clean

RUN apt-get install wget git -y

RUN git clone https://github.com/eth-sri/ERAN.git
WORKDIR ERAN

RUN ls

RUN apt-get install build-essential

RUN ./install.sh

RUN ./gurobi_setup_path.sh

RUN pip3 install -r requirements.txt

RUN mkdir nets

WORKDIR nets

RUN wget https://files.sri.inf.ethz.ch/eran/nets/tensorflow/mnist/mnist_conv_maxpool.tf

RUN wget https://files.sri.inf.ethz.ch/eran/nets/pytorch/mnist/convSmallRELU__DiffAI.pyt

WORKDIR ../

WORKDIR tf_verify

# example command to run:
# python3 . --netname ../nets/convSmallRELU__DiffAI.pyt --epsilon 0.1 --domain deepzono --dataset mnist

# todo: get other networks

#COPY mnist_relu_3_50.tf .
#COPY eran_deps.sh .
#RUN ./eran_deps.sh

RUN apt-get install nano
