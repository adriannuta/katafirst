apt update && apt install mysql-client -y
ssh root@host01 "docker run -d --name mysql  -e MYSQL_ROOT_PASSWORD=simple -e MYSQL_DATABASE=sakila  -e MYSQL_USER=user -e MYSQL_PASSWORD=pass123  mysql"
ssh root@host01 "mysql -h docker sakila -uuser -ppass123 < sakila-schema.sql"
ssh root@host01 "mysql -h docker sakila -uuser -ppass123 < sakila-data.sql"