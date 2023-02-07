# curl_legacy

Dockerfile and tooling to run curl using old ciphers from a docker container

### build docker image and push to docker hub

```
docker build -t curl_legacy .
docker images | grep curl_legacy
docker tag d77a16951c49 lefju418/curl_legacy:v1.0
docker login --username=lefju418
docker push lefju418/curl_legacy:v1.0
docker push lefju418/curl_legacy
```

### docker hub repository

<https://hub.docker.com/repository/docker/lefju418/curl_legacy>

### sample script using the image

place `curl_legacy.bash` in your path and allow execution.

`curl_legacy.bash https://mydomain.tld/uri`

is the equivalent of:

`curl -s --ciphers 'DEFAULT@SECLEVEL=0' https://mydomain.tld/uri`
