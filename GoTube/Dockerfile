FROM python:3.8.10

RUN apt-get update && \
    apt-get install -y python python-dev python-pip && \
    apt-get clean

RUN apt-get install -qy curl

RUN curl -fL https://github.com/mldiego/GoTube/archive/refs/heads/main.zip

RUN tar xzf GoTube-main.zip