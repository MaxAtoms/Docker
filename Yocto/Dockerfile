FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    sudo \
    build-essential \
    chrpath \
    diffstat \
    gawk \
    libncurses5-dev \
    texinfo \
    python2.7 \
    python3 \
    cpio \
    git-core \
    wget \
    locales \
    unzip \
    gcc-multilib \
    socat \
    libsdl1.2-dev \
    xterm \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

RUN ln -sf /usr/bin/python2.7 /usr/bin/python
RUN ln -sf /usr/bin/python2.7 /usr/bin/python2

RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash

RUN useradd -ms /bin/bash yocto
USER yocto
WORKDIR /home/yocto