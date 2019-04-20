FROM maxatoms/arduino-cli:latest 

ARG CONF_FILE=arduino-cli-esp8266.yaml

COPY ${CONF_FILE} /tmp/ 
RUN arduino-cli core update-index --config-file /tmp/${CONF_FILE} && \
    arduino-cli core install esp8266:esp8266 --config-file /tmp/${CONF_FILE}