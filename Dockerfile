FROM --platform=linux/amd64 alpine:latest

ARG git_xargs_version="0.1.3"
ARG gh_version="2.24.1"

RUN wget https://github.com/gruntwork-io/git-xargs/releases/download/v${git_xargs_version}/git-xargs_linux_amd64 \
  && install git-xargs_linux_amd64 /usr/local/bin/git-xargs \
  && rm git-xargs_linux_amd64 \
  && wget https://github.com/cli/cli/releases/download/v${gh_version}/gh_${gh_version}_linux_amd64.tar.gz \
  && tar -xzf gh_${gh_version}_linux_amd64.tar.gz \
  && install gh_${gh_version}_linux_amd64/bin/gh /usr/local/bin/gh \
  && rm -fr gh_${gh_version}_linux_amd64.tar.gz \
  && apk add --no-cache curl git jq
