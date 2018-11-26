apt update && apt install mysql-client -y
docker run -d --name mysql  -e MYSQL_ROOT_PASSWORD=simple -e MYSQL_DATABASE=sakila  -e MYSQL_USER=user -e MYSQL_PASSWORD=pass123  mysql
mysql -h docker sakila -uuser -ppass123 < sakila-schema.sql
mysql -h docker sakila -uuser -ppass123 < sakila-data.sql