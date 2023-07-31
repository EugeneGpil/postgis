FROM debian:10

RUN apt-get update -y && apt-get install -y  \
      postgresql \
      postgresql-11-postgis-2.5 \
      postgresql-11-postgis-2.5-scripts

RUN echo "listen_addresses = '*'" >> /etc/postgresql/11/main/postgresql.conf && \
    echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/11/main/pg_hba.conf
