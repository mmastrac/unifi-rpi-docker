FROM resin/rpi-raspbian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN \
	apt-get update -q -y && \
	apt-get install -q -y \
		oracle-java8-jdk \
		mongodb-server \
		unzip \
		binutils
