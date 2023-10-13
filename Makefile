#--mac-address 00:26:b9:12:34:56CapabilityBoundingSet limits capabilities the process is allowed to obtain. It doesn't grant any.
#--cap-add=NET_ADMIN --cap-add=SYS_ADMIN: not working
#SYS_ADMIN: ERROR main_loop: network_info::linux: Failed to notify system DNS manager of change. DNS may be broken err=Custom { kind: Other, error: "Failed to connect with system dbus: Failed to connect to socket /var/run/dbus/system_bus_socket: No such file or directory" 
build:
	docker build . -t warp-cli
run:
	docker run --cap-add=NET_ADMIN --cap-add=NET_RAW --cap-add=SYS_ADMIN --name warp-cli \
	--device=/dev/net/tun:/dev/net/tun --net=host -it warp-cli
test1:
	docker run --cap-add=NET_ADMIN --cap-add=NET_RAW --name warp-cli --device=/dev/net/tun:/dev/net/tun --net=host -it warp-cli
#Failed docker run --cap-add=NET_ADMIN --cap-add=NET_BIND_SERVICE --cap-add=CAP_SYS_PTRACE --name warp-cli --device=/dev/net/tun:/dev/net/tun --net=host -it warp-cli
#Failed	docker run --cap-add=NET_ADMIN --cap-add=NET_RAW --cap-add=SYS_ADMIN --name warp-cli --net=host -it warp-cli
shell:
	docker exec -it warp-cli /bin/bash		