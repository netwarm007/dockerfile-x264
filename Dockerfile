FROM tim03/yasm
LABEL MAINTAINER Chen, Wenli <chenwenli@chenwenli.com>

RUN \
  mkdir -p /usr/local/src && \
  cd /usr/local/src && \
  git clone http://git.videolan.org/git/x264.git
RUN \
 cd /usr/local/src/x264 && \
 ./configure  --prefix=/usr/local --enable-shared --enable-static \
 && make && make install && make clean

CMD /usr/local/bin/x264
