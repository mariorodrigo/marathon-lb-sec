FROM alpine

ENTRYPOINT [ "/marathon-lb/run" ]
CMD        [ "sse", "-m", "http://leader.mesos:8080" ]
EXPOSE     80 443 8080 

RUN apk add --update python py-pip haproxy openssl \
    && apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
    runit \
    && pip install requests sseclient

COPY  . /marathon-lb
WORKDIR /marathon-lb