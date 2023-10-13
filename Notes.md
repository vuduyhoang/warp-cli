service: 
CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_SYS_PTRACE
StateDirectory=cloudflare-warp
RuntimeDirectory=cloudflare-warp
LogsDirectory=cloudflare-warp
AmbientCapabilities grants capabilities that the process normally wouldn't have started with
CapabilityBoundingSet limits capabilities the process is allowed to obtain. It doesn't grant any.