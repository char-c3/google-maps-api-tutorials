#! /bin/bash -xe

HTMLDIR=/usr/share/nginx/html
SRCDIR=map-test
PRJDIR=$HTMLDIR/$SRCDIR

cp -ap $SRCDIR $HTMLDIR
for htmlfile in $(ls $PRJDIR/); do
  sed -i "s/<placeholder:google-maps-api-key>/$GOOGLE_MAPS_API_KEY/g" $PRJDIR/$htmlfile
done
