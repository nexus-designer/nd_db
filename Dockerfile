FROM postgres:15-alpine
COPY init.sh /docker-entrypoint-initdb.d/