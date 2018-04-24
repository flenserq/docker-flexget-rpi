FROM armhf/alpine
MAINTAINER BigAl <alan.chalmers@gmail.com>

#COPY config/ /config

VOLUME ["/config"]
ENTRYPOINT ["/config/bootstrap.sh"]
CMD [""]

RUN apk add --update \
  python \
  py-pip \
  findutils \
  ca-certificates \
  && pip install --no-cache-dir --disable-pip-version-check flexget transmissionrpc subliminal>=2.0 cfscrape \
  && rm -rf /var/cache/apk/*