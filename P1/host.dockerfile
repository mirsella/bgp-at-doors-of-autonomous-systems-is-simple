FROM alpine:3.19.1

RUN apk add --no-cache busybox

CMD ["tail", "-f", "/dev/null"]
