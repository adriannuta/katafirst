# Indexing data

The configuration in our example will index the film table from sakila database: 

`docker exec -it manticore indexer  sakila_film  --rotate`{{execute}}

Now we can start running some queries, let's see first if the index is there. First we connect to Manticore via SphinxQL:

`mysql -P9306 -h docker`{{execute}}

`SHOW TABLES;`{{execute}}

`SELECT * FROM sakila_film;`{{execute}}
