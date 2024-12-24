FROM nats:alpine
RUN apk update && apk add curl
RUN cd /bin && curl -sf https://binaries.nats.dev/nats-io/natscli/nats@latest | sh