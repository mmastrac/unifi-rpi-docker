# UniFi Controller Docker Image for Raspberry Pi

This is a barebones Docker image for the UniFi Controller, allowing it to run on a Raspberry Pi. This was specifically tested on a Raspberry Pi 1, model B.

Because it takes _forever_ to build images on a real RPi, the docker images have been split into a 'base' image (containing `apt-get` packages over top of the base image) and the 'unifi' image.

Between the base image and the unifi image, you'll need about 1GB free.

## Example Usage

```
docker run \
	-p $UNIFI_IP:8080:8080 -p $UNIFI_IP:8443:8443 -p $UNIFI_IP:8880:8880 \
	-v /srv/data/apps/docker/unifi/data:/usr/lib/unifi/data \
	--name unifi --net=host -it mmastrac/unifi-rpi
```

## Interesting Notes

 * [Snappy for Java](https://github.com/xerial/snappy-java) has a few interesting quirks to it, including [this bug](https://github.com/xerial/snappy-java/issues/147). It requires `readelf` to be present in the docker image. The version that ships with the controller doesn't actually work - we have to upgrade it to a more modern version.

## See Also

 * [rednut/docker-unifi-controller](https://github.com/rednut/docker-unifi-controller) (inspired this project and some of the scripts)
 * [UniFi's RPi instructions](https://help.ubnt.com/hc/en-us/articles/204910104-UniFi-Installing-the-Controller-software-on-Raspberry-Pi) (somewhat out-of-date)
 
 
