FROM debian:stable

RUN apt-get -y update
RUN apt-get -y install sudo

SHELL ["/bin/bash", "-c"]

RUN sudo -n apt-get -y install gcc \
                           python3 \
                           python3-pip \
                           ffmpeg \
                           libsm6 \
                           libxext6 \
    && sudo rm -rf /var/lib/apt/lists/*


RUN sudo pip3 install --no-cache-dir pyg4ometry==1.0.5
