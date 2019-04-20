FROM maxatoms/arduino-cli:latest

RUN arduino-cli core update-index
RUN arduino-cli core install arduino:avr