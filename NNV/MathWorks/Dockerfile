# FROM registry.codeocean.com/codeocean/matlab:2022b-ubuntu20.04
# This has everything we need except for DL verification library

FROM mathworks/matlab-deep-learning:r2022b

COPY DLveri.mlpkginstall /

USER root

# Install missing NNV toolbox requirements
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -y install git && \
	apt-get install --no-install-recommends --yes wget \
	build-essential \
	cmake && \
	apt-get clean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/*
	
WORKDIR /opt/matlab

RUN wget -q https://www.mathworks.com/mpm/glnxa64/mpm && \
	chmod +x mpm && \
	./mpm install --destination=/opt/matlab/R2022b/ --release=R2022b \
	Optimization_Toolbox \
	|| (echo "MPM Installation Failure. See below for more information:" && cat /tmp/mathworks_root.log && false) && \
	rm -f mpm /tmp/mathworks_root.log && \
	ln -fs /opt/matlab/R2022b/bin/matlab /usr/local/bin/matlab

WORKDIR /
	
COPY postInstall /
RUN /postInstall

# USER matlab
WORKDIR /
