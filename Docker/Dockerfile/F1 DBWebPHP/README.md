$ docker build -t dbweb .
$ docker run -it --name cdbweb -d -p 3306:3306 dbweb
