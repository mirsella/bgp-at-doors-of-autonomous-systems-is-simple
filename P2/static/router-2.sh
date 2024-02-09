ip link add br0 type bridge
ip link set dev br0 up

ip addr add 10.1.1.2/24 dev eth0
# Create a VXLAN network interface named vxlan10 with ID 10, using eth0 as its physical device.
# It specifies a remote endpoint IP 10.1.1.1, local IP 10.1.1.2, and uses the standard VXLAN port 4789
ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.1 local 10.1.1.2 dstport 4789
ip addr add 20.1.1.2/24 dev vxlan10

brctl addif br0 eth1
brctl addif br0 vxlan10

ip link set dev vxlan10 up
