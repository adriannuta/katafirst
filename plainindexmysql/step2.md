## Indexing 

Our  index 'sakila_film' is created in sphinx.conf but has no data. Searchd will complain about this when starts, this is normal.

To populate the index we use the indexer tool:

`indexer sakila_film`{{execute}}

The utility will output information about the created index, like how many document were found and how fast indexing was. 

Now let's start the searchd daemon:

`searchd`{{execute}}

