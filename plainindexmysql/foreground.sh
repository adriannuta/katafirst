docker run -d --name sakilaexample  manticoresearch/sakilaexample
wget http://downloads.mysql.com/docs/sakila-db.tar.gz
chmod +x wait-for-it.sh
./wait-for-it.sh -h docker -p 3306 -t 30 --
docker exec -it sakilaexample bash
