## Getting Ready

## wait for prerequisite installation

* mysql docker image
* import Sakila db in MySQL

##  Install Manticore docker image

First we create a data container for the sphinx.conf, to replace the existing one from the docker image

`docker create -v /etc/sphinxsearch --name confContainer busybox`{{execute}}

Copy the sphinx.conf to the data container:

`docker cp sphinx.conf confContainer:/etc/sphinxsearch`{{execute}}

Beside the config container we'll also use a link between the MySQL and Manticore containers:

`docker run --name manticore -p 9306:9306 --volumes-from confContainer --link mysql:mysql -d manticoresearch/manticore`{{execute}}

