FROM alpine:3.12

RUN apk update

RUN apk add --no-cache wget openssh git bash tar gzip ca-certificates gawk

RUN apk add git-secret --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN rm -rf /var/cache/apk/*

RUN wget --quiet https://releases.hashicorp.com/terraform/0.14.9/terraform_0.14.9_linux_amd64.zip \
  && unzip terraform_0.14.9_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.14.9_linux_amd64.zip
