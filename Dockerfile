FROM --platform=linux/amd64 alpine:latest

ARG git_xargs_version="0.1.3"
ARG hub_version="2.14.2"

RUN wget https://github.com/gruntwork-io/git-xargs/releases/download/v${git_xargs_version}/git-xargs_linux_amd64 \
  && install git-xargs_linux_amd64 /usr/local/bin/git-xargs \
  && rm git-xargs_linux_amd64 \
  && wget https://github.com/github/hub/releases/download/v${hub_version}/hub-linux-amd64-${hub_version}.tgz \
  && tar -xzf hub-linux-amd64-${hub_version}.tgz \
  && install hub-linux-amd64-${hub_version}/bin/hub /usr/local/bin/hub \
  && rm -fr hub-linux-amd64-${hub_version} \
  && apk add --no-cache jq
