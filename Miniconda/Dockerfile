FROM ubuntu:24.04
RUN chsh -s /bin/bash

RUN apt-get update && apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Miniconda Setup
RUN mkdir -p ~/miniconda3
RUN wget --no-verbose https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
RUN rm ~/miniconda3/miniconda.sh

RUN source ~/miniconda3/bin/activate && \
    conda init --all && \
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && \
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
