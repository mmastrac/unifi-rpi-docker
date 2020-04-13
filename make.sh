VERSION=$1
echo Downloading version "$VERSION" from "https://dl.ui.com/unifi/$VERSION/UniFi.unix.zip"...
curl "https://dl.ui.com/unifi/$VERSION/UniFi.unix.zip" -o unifi-rpi/UniFi.unix.zip
docker build unifi-rpi/ -t mmastrac/unifi-rpi:latest -t mmastrac/unifi-rpi:v$VERSION
docker push mmastrac/unifi-rpi:latest
docker push mmastrac/unifi-rpi:v$VERSION
