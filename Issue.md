ERROR device_posture::linux: Failed to load SMBiosData error=Os { code: 2, kind: NotFound, message: "No such file or directory" }
Broken pipe (os error 32)
dns_proxy::resolver: DoH No Connections err=reqwest::Error { kind: Request, url: Url { scheme: "https", cannot_be_a_base: false, username: "", password: None, host: Some(Domain("02ea5a4728049f0d09022fd47abcd5f5.cloudflare-gateway.com")), port: None, path: "/dns-query", query: None, fragment: None }, source: hyper::Error(Connect, ConnectError("tcp connect error", Os { code: 101, kind: NetworkUnreachable, message: "Network is unreachable" })) } resolver_ip=2606:4700:4700::1111