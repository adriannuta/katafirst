## Index configuration


The most simple plain index defition contains the path pattern of the index files and reference of the source the index would use.

```
index sakila_film {
        path = /var/lib/manticore/testplain
        source = sakila_film
}
```
Let's look at the source. The first parameter defines the connector type, in our case 'mysql'. Next are the connection parameters to the database we connect.

The 'sql_query_pre' directive is set here to ensure the result set values will use UTF8 values, as the search engine uses on utf8 character sets.

The engine doesn't necessary have to get data from a single table, instead a query is used, which can join data from multiple cases.

The first column should be always the document id, which should have unique values.

The rest of the source parameters define the attributes taken from the sql_query result. Anything not declared here will be considered a fulltext field. 

Fulltext fields are only indexed, not stored, so we can search them, but their values will not be returned in the results.


The sql_field_string is a combo field/attribute and it's values are both indexed, but also stored. 

```
source sakila_film {
        type = mysql
        sql_host = 127.0.0.1
        sql_user = user
        sql_pass = pass123
        sql_db = sakila
        sql_query_pre = SET NAMES utf8
        sql_query =  SELECT film.film_id, title, description,category_id, release_year,rental_rate from film join film_category on film.film_id=film_category.film_id
        sql_field_string = title
        sql_field_string = description
        sql_attr_uint = release_year
        sql_attr_uint = category_id
        sql_attr_float = rental_rate


}


```
