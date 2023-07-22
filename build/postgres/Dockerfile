ARG POSTGRES_MAJOR=15
FROM postgres:${POSTGRES_MAJOR}.3

ARG ID_USER=1000
ARG ID_GROUP=1000
RUN \
    echo "creating group and user\n" &&\
    groupadd -g ${ID_GROUP} app &&\
    useradd -u ${ID_USER} -m app -g app

# from https://github.com/postgis/docker-postgis/blob/81a0b55/14-3.2/Dockerfile
ARG POSTGRES_MAJOR=15
ARG POSTGIS_MAJOR=3
# единственный способ указать верси 3.3.3 - это с debian непонятными приписками
ARG POSTGIS_VERSION="3.3.3+dfsg-1.pgdg120+1"
RUN \
    echo "installing postgis\n" &&\
    apt-get update &&\
    \
    echo "apt-cache showpkg postgresql-15-postgis-3\n" && \
    apt-cache showpkg postgresql-${POSTGRES_MAJOR}-postgis-${POSTGIS_MAJOR} &&\
    \
    echo "apt-get install -y --no-install-recommends \
      postgresql-3-postgis-3=3.3.3+dfsg-1.pgdg120+1 \
      postgresql-3-postgis-3-scripts \
    \n" && \
    apt-get install -y --no-install-recommends \
        postgresql-${POSTGRES_MAJOR}-postgis-${POSTGIS_MAJOR}=${POSTGIS_VERSION} \
        postgresql-${POSTGRES_MAJOR}-postgis-${POSTGIS_MAJOR}-scripts && \
    rm -rf /var/lib/apt/lists/*
