# BrowserMob Proxy Standalone

This container runs [Browsermob Proxy](https://bmp.lightbody.net/) on standalone mode, which can be manipulated via it's REST API

## Image Details

  - Base image: [java:8-jre-alpine](https://hub.docker.com/r/_/java/)
  - Exposed ports:
    - **8080**: REST API
    - **8081**-**8200**: Proxy server instances

## Interacting with the REST API

Start the container, binding desired ports:
```sh
docker run -p 58080:8080 -p 58200:8200 bwowk/browsermob-proxy
```
Start a Proxy Server on desired port:
```sh
curl -X POST -d 'port=8200' http://localhost:58080/proxy
```

Test the Proxy Server:
```sh
curl -I -x localhost:58200 www.docker.com
```

For API reference check the [documentation](https://github.com/lightbody/browsermob-proxy/tree/browsermob-proxy-2.1.2#rest-api)
