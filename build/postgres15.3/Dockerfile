FROM postgres:15.3

ARG ID_USER=1000
ARG ID_GROUP=1000
RUN \
    echo "creating group and user\n" &&\
    groupadd -g ${ID_GROUP} app &&\
    useradd -u ${ID_USER} -m app -g app

# from https://github.com/postgis/docker-postgis/blob/81a0b55/14-3.2/Dockerfile
RUN \
    apt-get update &&\
    \
    apt-cache showpkg postgresql-15-postgis-3 && \
    \
    apt-get install -y --no-install-recommends \
        postgresql-15-postgis-3 \
        postgresql-15-postgis-3-scripts && \
    rm -rf /var/lib/apt/lists/*
