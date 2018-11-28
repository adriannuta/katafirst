docker run -d --name mysql  -e MYSQL_ROOT_PASSWORD=simple -e MYSQL_DATABASE=sakila -p 3306:3306  -e MYSQL_USER=user -e MYSQL_PASSWORD=pass123  mysql
wget http://downloads.mysql.com/docs/sakila-db.tar.gz
tar zxvf sakila-db.tar.gz
cd sakila-db
mysql -P3306 -hdocker -uuser -ppass123 sakila < sakila-schema.sql
mysql -P3306 -hdocker -uuser -ppass123 sakila < sakila-data.sql


