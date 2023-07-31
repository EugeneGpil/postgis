FROM postgres:11.20-bookworm

ARG ID_USER=1000
ARG ID_GROUP=1000
RUN \
    echo "creating group and user\n" &&\
    groupadd -g ${ID_GROUP} app &&\
    useradd -u ${ID_USER} -m app -g app


RUN apt-get update && apt-get install -y \
      curl \
      build-essential \
      libpq-dev \
      libxml2-dev

RUN curl https://download.osgeo.org/geos/geos-3.9.2.tar.bz2 --output geos-3.9.2.tar.bz2 && \
    tar -xvf geos-3.9.2.tar.bz2 && \
    cd geos-3.9.2 && \
    ./configure

#    make && \
#
#    cd .. && \
#
#RUN curl https://download.osgeo.org/postgis/source/postgis-2.5.1.tar.gz --output postgis-2.5.1.tar.gz && \
#    tar -xvf postgis-2.5.1.tar.gz && \
#    cd postgis-2.5.1
#    ./configure && \
#    cd .. && \