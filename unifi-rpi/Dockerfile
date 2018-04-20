FROM mmastrac/unifi-rpi-base
ENV DEBIAN_FRONTEND noninteractive
ADD UniFi.unix.zip /opt/
RUN cd /opt/ && \
	unzip UniFi.unix.zip && \
	ln -s /opt/UniFi /usr/lib/unifi

EXPOSE 8443 8880 8080 27117

VOLUME /usr/lib/unifi/data
WORKDIR /usr/lib/unifi
CMD ["java", "-Xmx256M", "-jar", "/usr/lib/unifi/lib/ace.jar", "start"]
