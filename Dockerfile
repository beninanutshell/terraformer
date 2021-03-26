FROM alpine:3.12

RUN apk update

RUN apk add --no-cache wget openssh git bash tar gzip ca-certificates git-secret

RUN rm -rf /var/cache/apk/*

RUN wget --quiet https://releases.hashicorp.com/terraform/0.14.9/terraform_0.14.9_linux_amd64.zip \
  && unzip terraform_0.14.9_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.14.9_linux_amd64.zip
