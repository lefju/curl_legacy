# syntax=docker/dockerfile:1
# build command: docker build -t d-eyaml .
FROM alpine:3.17.1
RUN apk add curl
ENTRYPOINT ["curl", "-s", "--ciphers", "DEFAULT@SECLEVEL=0"]
CMD ["https://google.fr"]
