## Indexing from MySQL

We index the data:
`docker run -d --name mysql  -e MYSQL_ROOT_PASSWORD=simple -e MYSQL_DATABASE=sakila  -e MYSQL_USER=user -e MYSQL_PASSWORD=pass123  mysql`{{execute}}`
`mysql -h docker sakila -uuser -ppass123 < sakila-schema.sql`{{execute}}`
`mysql -h docker sakila -uuser -ppass123 < sakila-data.sql`{{execute}}`
`docker exec -it manticore indexer  sakila_film  --rotate`{{execute}}

