#! /bin/bash -xe

cp -ap map-test /usr/share/nginx/html/
sed -i "s/<placeholder:google-maps-api-key>/$GOOGLE_MAPS_API_KEY/g" /usr/share/nginx/html/map-test/index.html
