FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python python-dev python-pip && \
    apt-get clean

RUN apt-get install wget git -y

RUN git clone https://github.com/dieman95/deepimportance_code_release.git

RUN apt-get install build-essential

RUN pip install pip --upgrade

RUN pip install Tensorflow==1.10.0 Keras==2.2.2 numpy scikit-learn scikit-image matplotlib pillow cleverhans
