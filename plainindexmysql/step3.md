## Perform queries

Let's connect to Manticore Search

`mysql -P9306 -h0`{{execute}}

And check the indexed available

`SHOW TABLES;`{{execute}}

And perform a first query on our index:

`SELECT * FROM sakila_film;`{{execute}}

And run a simple fulltext search:

`SELECT *,WEIGHT() FROM sakila_film WHERE MATCH('a secret agent and a dentist');`{{execute}}


`SELECT * FROM sakila_film WHERE MATCH('a secret agent and a dentist') ORDER BY rental_rate;`{{execute}}