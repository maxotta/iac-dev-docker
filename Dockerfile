FROM alpine:3.17
LABEL maintainer="maxmilio@kiv.zcu.cz" \
      org.opencontainers.image.source="https://github.com/maxotta/iac-dev-docker"

ARG SRC_WORKDIR=/usr/src
ARG SRC_GITREPO

RUN apk add --no-cache bash \
 && apk add --no-cache git \
 && apk add --no-cache opennebula-tools \
 && apk add --no-cache terraform \
 && apk add --no-cache python3 \
 && apk add --no-cache py3-pip \
 && pip install ansible \
 && mkdir -p ${SRC_WORKDIR}

WORKDIR ${SRC_WORKDIR}
# RUN git clone ${SRC_GITREPO}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV SHELL /bin/bash

CMD [ "bash", "-c", "while :; do cd ${SRC_WORKDIR}; bash -i; echo '==> NOPE ! Exiting the shell would also stop the Docker container! Please close the terminal window instead.'; done" ]
