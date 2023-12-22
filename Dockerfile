FROM nodered/node-red:latest-debian

COPY . /data

WORKDIR /usr/src/node-red

ENTRYPOINT ["./entrypoint.sh"]