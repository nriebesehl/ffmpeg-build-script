#!/bin/bash

DOCKERPROC=$(docker run -it -d --entrypoint /bin/bash ffmpeg:cuda-ubuntu)

echo $DOCKERPROC;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libnppig.so.11 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libnppicc.so.11 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libnppc.so.11 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libnppidei.so.11 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libva.so.2.700.0 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libva-drm.so.2.700.0 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libva.so.2 /usr/lib/x86_64-linux-gnu/;
sudo docker cp $DOCKERPROC:/usr/lib/x86_64-linux-gnu/libva-drm.so.2 /usr/lib/x86_64-linux-gnu/;

sudo docker cp $DOCKERPROC:/usr/bin/ffmpeg /usr/bin/ffmpeg;
sudo docker cp $DOCKERPROC:/usr/bin/ffplay /usr/bin/ffplay;
sudo docker cp $DOCKERPROC:/usr/bin/ffprobe /usr/bin/ffprobe;

docker stop $DOCKERPROC;
docker rm $DOCKERPROC;