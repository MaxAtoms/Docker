FROM alpine:3

RUN apk add --no-cache iperf3
EXPOSE 5201/tcp
ENTRYPOINT [ "/usr/bin/iperf3" ]
CMD ["--server"]