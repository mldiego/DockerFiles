FROM registry.codeocean.com/codeocean/matlab:2022b-ubuntu20.04

RUN apt-get update && apt-get -y install git && pip install --upgrade pip \
	&& apt-get install --no-install-recommends --yes wget \
	&& apt-get install unzip
	
COPY postInstall /
RUN /postInstall

# USER matlab
WORKDIR /

COPY license.lic /MATLAB/licenses
