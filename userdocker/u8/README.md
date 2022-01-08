
# run

bash sha


# ref

https://github.com/nodejs/docker-node/issues/740


# note


docker - Dockerfile COPY files not showing on VOLUME - Stack Overflow

You need to move your VOLUME instruction down below your final ADD instruction (I'd suggest right above that CMD instruction) -- once a directory is defined as a VOLUME, it is essentially "snapshotted" at that point, and created empty and fresh for every additional container/layer, so any files added after that point will be obscured/ignored.

 docker_know
     January 8, 2022 at 2:36:41 PM EST * · permalink  · QRCode · archive.org

 https://stackoverflow.com/questions/34343200/dockerfile-copy-files-not-showing-on-volume/34350126 

# 

