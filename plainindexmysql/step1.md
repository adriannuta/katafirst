## Getting Ready

##wait for prerequisite installation

* mysql docker image
* import Sakila db in MySQL

#Install Manticore docker image

`docker run --name manticore -p 9306:9306 -v ~/:/etc/sphinxsearch/ -d manticoresearch/manticore`{{execute}}

