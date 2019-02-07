## Searching

Let's take a simple query:

`SElECT movie_title FROM movies WHERE MATCH('Tom Hanks');`{{execute}}


`SELECT * FROM movies WHERE match('Tom Hanks') LIMIT 40 FACET content_rating FACET
 INTERVAL(gross,0,10000000,100000000,1000000000) FACET title_year ORDER BY title_year DESC FACET imdb_score ORDER BY imdb_score DESC;`{{execute}}
