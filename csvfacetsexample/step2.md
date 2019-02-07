## Indexing

We simply run:

`indexer movies --rotate`{{execute}}

Now we can connect to the engine and see our new index:

`mysql -P9306 -h0`{{execute}}

`SELECT * FROM movies\G`{{execute}}