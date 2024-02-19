FROM frrouting/frr:v8.4.1

RUN apk add --no-cache busybox
# enable services included in frr
RUN sed -i "s/^bgpd=no/bgpd=yes/" /etc/frr/daemons \
  && sed -i "s/^ospfd=no/ospfd=yes/" /etc/frr/daemons \
  && sed -i "s/^isisd=no/isisd=yes/" /etc/frr/daemons
