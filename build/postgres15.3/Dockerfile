FROM postgres:15.3

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
