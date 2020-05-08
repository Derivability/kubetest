FROM postgres:alpine

COPY init.sql /docker-entrypoint-initdb.d/init.sql
RUN chmod a+r /docker-entrypoint-initdb.d/*
