wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
docker run  --name mysql  -e MYSQL_ROOT_PASSWORD=simple -e MYSQL_DATABASE=sakila -p 3306:3306  -e MYSQL_USER=user -e MYSQL_PASSWORD=pass123  mysql
wget http://downloads.mysql.com/docs/sakila-db.tar.gz
tar zxvf sakila-db.tar.gz
cd sakila-db
./wait-for-it.sh -h docker -p 3306 -t 30
mysql -P3306 -h docker -uuser -ppass123 sakila < sakila-schema.sql
mysql -P3306 -h docker -uuser -ppass123 sakila < sakila-data.sql


