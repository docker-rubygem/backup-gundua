FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.3.1.2

RUN gem install backup-gundua --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["backup"]
CMD ["--help"]
