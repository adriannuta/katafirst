## Refreshing data in the index

Plain indexes are immutable, this means if we want to refresh the content in it we need to reindex it enterely. 
For  attributes it is possible to use 'UPDATE' statement (just like in MYSQL), however for new rows, modified fulltext fields or make content dissapear, we need to reindex.

Unlike the first time we indexes, now the searchd daemon runs and have the index loaded. This means it puts a lock on the index. 
To be able to make a new version of the index, the 'indexer' utility will create a new copy and when ready it will inform the daemon about it.
This is done adding the '--rotate' parameter.

`indexer sakila_film --rotate`{{execute}}