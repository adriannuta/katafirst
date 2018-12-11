In this tutorial you will learn how to create an index in Manticore Search using data from a MySQL database.


Plain indexes are created by connection and grabbing the data from a source. 

Manticore Search can get data from databases, CSV/TSV or XML files. 

Available database connectors are for MySQL, Postgres, MSSQL as well as a generic ODBC driver, which allows getting data from any database that supports ODBC.

In this tutorial we are using a MySQL database which uses the sample Sakila database provided by MySQL (https://dev.mysql.com/doc/sakila/en/).

Manticore Search packages come with built-in support for MySQL, but require the presence of client libraries (the package has different names, depending on Linux distribution, for more information check https://docs.manticoresearch.com/latest/html/installation.html)
