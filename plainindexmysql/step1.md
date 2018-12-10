## Getting Ready

Plain indexes are created by connection and grabbing the data from a source. 

Manticore Search can get data from databases, CSV/TSV or XML files. 

Available database connectors are for MySQL, Postgres, MSSQL as well as a generic ODBC driver, which allows getting data from any database that supports ODBC.

In this tutorial we are using a MySQL database which uses the sample Sakila database provided by MySQL (https://dev.mysql.com/doc/sakila/en/).

Manticore Search packages come with built-in support for MySQL, but require the presence of client libraries (the package has different names, depending on Linux distribution, for more information check https://docs.manticoresearch.com/latest/html/installation.html)

## Start Manticore

Simply do 
`searchd`{{execute}}

Our  index 'sakila_film' is created in sphinx.conf but has no data. Searchd will complain about this when starts, this is normal.

To populate the index we use the indexer tool:

`indexer sakila_film --rotate`{{execute}}

The '--rotate' parameter will tell 'searchd' daemon to load the index. If the index would been already made, '--rotate' is mandatory while 'searchd' is running.

If you look in the sphinx.conf, the sakila_film declaration has two parts: the actual index declaration and the source declaration.

```
source sakila_film {
        type = mysql
        sql_host = 127.0.0.1
        sql_user = user
        sql_pass = pass123
        sql_db = sakila
        sql_query_pre = SET NAMES utf8
        sql_query =  SELECT film_id, title, description, release_year,rental_rate from film join film_category on film.id=film_category.film_id
        sql_field_string = title
        sql_attr_uint = release_year
        sql_attr_uint = category_id
        sql_attr_float = rental_rate


}
index sakila_film {
        path = /var/lib/manticore/testplain
        source = sakila_film
}

```
