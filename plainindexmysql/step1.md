## Run Manticore Search instance on container

We are going to mount the folder (in this tutorial the user home directory) with our sphinx.conf.
You can do that directly by entering in the docker instance as well. 
Our custom configuration has a plain index which will use a MySQL source to get several fields of the 'film' table.
The DB we are using here is Sakila (it can be freely downloaded from MySQL website).


`docker run --name manticore -p 9306:9306 -v ~/:/etc/sphinxsearch/ -d manticoresearch/manticore`{{execute}}

