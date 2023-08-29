ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}

MAINTAINER Christian Kufner <christian.kufner@googlemail.com>

ARG KEA_CTRL_AGENT_VERSION

RUN apk add kea-ctrl-agent=${KEA_CTRL_AGENT_VERSION} --update-cache \
    && mkdir /run/kea

CMD [ "kea-ctrl-agent","-c","/etc/kea-ctrl-agent/kea-ctrl-agent.conf"]

EXPOSE 8000
