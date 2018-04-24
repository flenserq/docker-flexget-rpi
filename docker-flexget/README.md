# FlexGet service on Alpine Linux

This is a small container of FlexGet service on top of a tiny Apline Linux distribution. This container is only 102MB keeping it small it import for the Raspberry Pie.

## Building the image

`docker build -t docker-flexget .`

## Using the image

Run the flexget container with the default options which is to test execute your config

`docker run  --rm=true -v /Users/.flexget:/config docker-flexget`

Run flexget with supplied args of `-c /config/config.yml execute`

`docker run  --rm=true -v /Users/.flexget:/config docker-flexget -c /config/config.yml execute`

Example use on LibreElec

`docker run  --rm=true -v /storage/.flexget:/config docker-flexget -c /config/config.yml execute`

Example use on LibreElec CRON

`0 22 * * * /storage/.kodi/addons/service.system.docker/bin/docker run --rm=true -v /storage/.flexget:/config docker-flexget -c /config/config.yml execute`

## Dependancies

* You must install the **Docker add-on** from the LibreELEC Add-on repository from within Kodi.

## Reference

* [Alpine](https://hub.docker.com/r/armhf/alpine/)
* [FlexGet](http://flexget.com/)
* [LibreELec](https://libreelec.tv)
