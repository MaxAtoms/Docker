FROM debian:8

ARG CLI_SOURCE_PATH=https://downloads.arduino.cc/arduino-cli/
ARG CLI_SOURCE_FILE=arduino-cli-latest-linux64.tar.bz2
ARG CLI_SOURCE_URL=${CLI_SOURCE_PATH}${CLI_SOURCE_FILE}

# See: https://github.com/arduino/arduino-cli/issues/133
ENV USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
      wget \
      ca-certificates \
      bzip2 \
      && rm -rf /var/lib/apt/lists/*
RUN wget -nv ${CLI_SOURCE_URL} -P /tmp &&\
    tar -xjvf /tmp/${CLI_SOURCE_FILE} -C /tmp && \
    find /tmp -name "arduino-cli-*-linux64" -exec mv '{}' "/usr/bin/arduino-cli" \; && \
    rm /tmp/arduino-cli-*