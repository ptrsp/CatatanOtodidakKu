$ docker build -t web .
$ docker run -it --name cweb -d -p 80:80 --link cdbweb:dbweb web
