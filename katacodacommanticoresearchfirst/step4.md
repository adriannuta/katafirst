## Executing search queries

Now we have some data, we can do some queries.

Fulltext searches are done with the special clause MATCH, which is the main workhorse.

`SELECT * FROM testrt WHERE MATCH('list of laptops')`{{execute}}

As you see in the result set we can only get back the doc id and the attributes. The fulltext fields values are not returned since the text is only indexed, not stored also, and it.s impossible to rebuild the original text.

Now let.s add some filtering and more ordering:

`SELECT *,WEIGHT() FROM testrt WHERE MATCH('list of laptops') AND gid>10  ORDER BY WEIGHT() DESC,gid DESC`{{execute}}


The search above does a simple matching, where all words need to be present. But we can do more:

`SELECT *,WEIGHT() FROM testrt WHERE MATCH('"list of business laptops"/3')`{{execute}}

SHOW META returns information about previous executed query, that is number of found records (in total_found), execution time (in time) and statistics about the keywords of the search.

`SHOW META`{{execute}}
