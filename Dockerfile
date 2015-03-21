FROM busybox:latest
RUN wget -O /blender.tar.bz2 "http://ftp.nluug.nl/pub/graphics/blender/release/Blender2.73/blender-2.73a-linux-glibc211-x86_64.tar.bz2"
RUN bunzip2 -d blender.tar.bz2
RUN tar -xvf /blender.tar
RUN mv blender*/ blender/
COPY master.blend /blender/master.blend
