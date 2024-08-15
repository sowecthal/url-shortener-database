FROM postgres:13.3

ENV POSTGRES_DB="database"
ENV POSTGRES_USER="user"
ENV POSTGRES_PASSWORD="password"

EXPOSE 5432

COPY models /docker-entrypoint-initdb.d/models
COPY init /docker-entrypoint-initdb.d/init
COPY *.sql /docker-entrypoint-initdb.d/