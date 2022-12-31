# PEMBELAJARAN DOCKER
List Pembahasan :
* Manage Image Docker
* Manage Container Docker
* Build Image Dengan / Tanpa Dockerfile
* Docker Networking
* Docker Volume

## Manage Image Docker
### Membuat, Menghapus, Mengganti Nama, Mengupload/Mengunduh (Push/Pull) Image
Syntax : 
* $ docker image ls

Deskripsi : Menampilkan daftar image yang tersedia di local docker machine kita.
```
$ docker image ls

REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
debian              8                   00b72214a37e        3 days ago          129MB
debian              latest              971452c94376        3 days ago          114MB
```
* $ docker tag IMAGE[:TAG] NEW_IMAGE[:TAG]

Deskripsi : Digunakan untuk menduplikat/mengcopy image bersangkutan menjadi image dengan nama baru.
```
$ docker tag ubuntu:14.04 ubuntu:14.04-apache
```
* $ docker pull [OPTIONS] NAME[:TAG|@DIGEST]

Deskripsi : Mengunduh image dari dockerhub (image registry docker). Contoh : ```docker pull ubuntu:14.04```
```
$ docker pull hello-world
Using default tag: latest
latest: Pulling from library/hello-world
Digest: sha256:9f6ad537c5132bcce57f7a0a20e317228d382c3cd61edae14650eec68b2b345c
Status: Image is up to date for hello-world:latest
docker.io/library/hello-world:latest
```
* $ docker push registry/image:tag

Deskripsi : Mengupload local image ke image registry (Contoh : docker hub)
```
$ docker tag ubuntu:14.04 ptrsp/ubuntuweb:1.0-apache
$ docker push ptrsp/ubuntuweb:1.0-apache
```
* $ docker image rm IMAGE[:TAG]
* $ docker rmi IMAGE[:TAG]

Deskripsi : 2 Perintah diatas keduanya dapat digunakan untuk menghapus image.
```
$ docker image rm ubuntu:14.04
```

#### Catatan : 
#### 1. Menghapus image hanya dapat dilakukan jika image tersebut tidak sedang digunakan (entah itu running maupun unrunning container)
#### 2. Setiap image registry memiliki format penamaan image yang berbeda. Contoh : username/image_name [Dockerhub], reponame/username/image_name [Image Registry Lain]
## Manage Container Docker
### Menampilkan, Membuat, Menjalankan, Memberhentikan, Menghapus, Do-interactive Container
Syntax : 
* $ docker container ls
* $ docker ps

Deskripsi : Menampilkan daftar running container. Untuk menampilkan keseluruhan tambahkan attribut -a .
```
$ docker container ls -a
```
* $ docker container create --name CONTAINER_NAME IMAGE_NAME[:TAG]
* $ docker create --name CONTAINER_NAME IMAGE_NAME[:TAG]

Deskripsi : Membuat sebuah container dari suatu image. Ketika berhasil terbentuk container, maka container tersebut dalam keadaan stop.
```
$ docker container create --name CUbuntu ubuntu:14.04
```
* $ docker container [start/stop] [CONTAINER_ID/CONTAINERNAME]

Deskripsi : Untuk menjalankan (start) atau memberhentikan (stop) suatu container.
```
$ docker container stop 7df248dadfj
$ docker container stop CUbuntu
```
* $ docker run [ARGS] --name CONTAINER_NAME IMAGE[:TAG] [CMD]

Deskripsi : Digunakan untuk membuat lalu menjalankan container hanya dengan satu kali perintah.
```
$ docker run -it --name CUbuntu -d -p 80:80 Ubuntu:14.04 bash
$ docker run -e username=peiter Ubuntu:14.04 /bin/echo Hi Ubuntu Container
```
* $ docker exec [ARG] [CONTAINER_ID/CONTAINERNAME] [CMD]

Deskripsi : Diguanakn untuk menjalankan command pada running container.
```
$ docker exec -it 9dj38ajl89 /bin/bash
```
* $ docker container rm [CONTAINER_ID/CONTAINERNAME]
* $ docker rm [CONTAINER_ID/CONTAINERNAME]

Deskripsi : Diguanakn untuk menghapus suatu container. Dengan catatan container tersebut dalam keadaan mati.
```
$ docker container rm 7df248dadfj
$ docker rm CUbuntu
```
#### Catatan : 
#### 1. Ketika Menjalankan perintah 'docker run', namun image tidak tersedia di local docker machine. maka secara otomatis akan mengunduh dari docker hub.
#### 2. Kita bisa menyertakan sebanyak apapun argument yang ingin dilibatkan (entah itu -i, -t, -e, -d, atau lainnya).
