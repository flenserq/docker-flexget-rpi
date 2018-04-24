FROM armhf/alpine
MAINTAINER BigAl <alan.chalmers@gmail.com>

VOLUME ["/config"]
ENTRYPOINT ["flexget"]
CMD ["--test", "-c", "/config/config.yml", "execute"]

RUN apk add --update \
  python \
  py-pip \
  ca-certificates \
  && pip install --no-cache-dir --disable-pip-version-check flexget transmissionrpc \
  && rm -rf /var/cache/apk/*
