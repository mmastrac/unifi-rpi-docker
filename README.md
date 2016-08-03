# unifi-rpi-docker
UniFi Docker Raspberry Pi


```
docker run \
	-p 192.168.88.3:8080:8080 -p 192.168.88.3:8443:8443 -p 192.168.88.3:8880:8880 \
	-v /srv/data/apps/docker/unifi/data:/usr/lib/unifi/data \
	--name unifi --net=host -it mmastrac/unifi-rpi
```
