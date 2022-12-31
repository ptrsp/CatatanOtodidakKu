FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=rahasia \
  MYSQL_DATABASE=fbgroup \
  MYSQL_USER=supervisor \
  MYSQL_PASSWORD=rahasia
VOLUME /database
COPY database /database
WORKDIR /database
#RUN apt-get update && apt-get upgrade -y
#RUN mysql -u supervisor --password=rahasia fbgroup < db1.sql
EXPOSE 3306
