FROM tim03/yasm
LABEL MAINTAINER Chen, Wenli <chenwenli@chenwenli.com>

WORKDIR /usr/src/x264
RUN \
  curl ftp://ftp.videolan.org/pub/x264/snapshots/last_stable_x264.tar.bz2 | tar jxv --strip-components=1 -f -
RUN \
 ./configure  --enable-shared --enable-static \
 && make && make install && make clean

CMD ["/usr/bin/x264"]
