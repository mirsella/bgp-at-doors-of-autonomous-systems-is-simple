- **BGP (Border Gateway Protocol):** It's the protocol underlying the routing decisions on the internet, determining how data packets travel from one place to another across networks.

- **VXLAN and EVPN:**

  - **VXLAN (Virtual Extensible LAN):** A network virtualization technology that allows large-scale isolated Layer 2 networks over a Layer 3 network, increasing scalability.
  - **EVPN (Ethernet VPN):** Enhances VXLAN by providing advanced networking features such as improved scalability, segmentation, and traffic optimization.

- **The FRRouting Project:** An open-source project that implements routing protocols such as BGP, OSPF, and IS-IS. It's designed for modern routing needs, supporting Unix/Linux platforms.

- **Zebra (Software):** A core part of the FRRouting project, managing the routing tables of the underlying operating system. It provides an abstraction layer between the routing protocols and the actual packet forwarding mechanism.

- **BGPD Service:** A daemon from the FRRouting project responsible for implementing the BGP protocol. When active and configured, it manages BGP routing policies and paths.

- **OSPFD Service:** Another daemon from the FRRouting project, handling the OSPF (Open Shortest Path First) protocol. It's used for automatically managing IP routing within a single routing domain.

- **IS-IS Routing Engine Service:** Part of the FRRouting project, this service implements the IS-IS (Intermediate System to Intermediate System) protocol for routing within an organization, often used alongside BGP for large network infrastructures.
