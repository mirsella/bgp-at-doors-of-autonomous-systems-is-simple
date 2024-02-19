FROM alpine:3.19.1

RUN apk add --no-cache busybox

# just to keep the container running
CMD ["tail", "-f", "/dev/null"]
