FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y python python-dev python-pip && \
    apt-get clean

RUN apt-get install wget git -y

RUN git clone https://github.com/METABPL/multi-format-ingestion.git

RUN apt-get install build-essential

RUN pip install pip --upgrade

RUN pip install python-docx python-pptx openpyxl pdfplumber easyocr Pillow requests PyYAML numpy
