FROM postgres:10.6
MAINTAINER nikhil baby <nikhil_baby@hotmail.com>

RUN apt-get update && apt-get install -y build-essential curl postgresql-server-dev-10
RUN curl https://ftp.postgresql.org/pub/source/v10.6/postgresql-10.6.tar.bz2 -o /postgresql-10.6.tar.bz2
RUN cd / && tar xvf postgresql-10.6.tar.bz2
RUN cd /postgresql-10.6/contrib/cube && sed -i 's/#define CUBE_MAX_DIM (100)/#define CUBE_MAX_DIM (128)/' cubedata.h && \
    USE_PGXS=true make && USE_PGXS=true make install
