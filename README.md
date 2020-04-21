# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t misung755/nginx .
	mkdir c:\\Users\\user\\df
	docker run -it --name p1 -v c:\\Users\\user\\df:/var/www/html -p 80:80  misung755/nginx
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        nowage/centos7      "/bin/bash"         7 seconds ago       Up 6 seconds                            c1
```

To test, ("nowage" is username. )
```
	echo "<h1>hi</h1>" > ~/df/index.html
	open 127.0.0.1
```
To Rollback
```
    docker rm p1 -f
    docker rmi misung755/nginx
```
