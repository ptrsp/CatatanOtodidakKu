FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=rahasia \
  MYSQL_DATABASE=db_candidateweb
COPY database /docker-entrypoint-initdb.d/
VOLUME /database
WORKDIR /database
COPY database /database
EXPOSE 3306
