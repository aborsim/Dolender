FROM ubuntu
MAINTAINER aborsim

RUN apt-get update && \
    apt-get -y install bzip2 libgl1-mesa-dev libglu1-mesa libxi6 && \
    apt-get clean

ENV BLENDER_MAJOR 2.73
ENV BLENDER_VERSION 2.73a
ENV BLENDER_BZ2_URL http://mirror.cs.umn.edu/blender.org/release/Blender$BLENDER_MAJOR/blender-$BLENDER_VERSION-linux-glibc211-x86_64.tar.bz2

RUN wget -O /blender.tar.bz2 $BLENDER_BZ2_URL
RUN tar -jxf -C /blender /blender.tar.bz2
COPY master.blend /blender/master.blend

CMD /blender/blender -b /blender/master.blend -a
