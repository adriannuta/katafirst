docker run -d --name sakilaexample  manticoresearch/sakilaexample
wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
chmod +x wait-for-it.sh
./wait-for-it.sh -h docker -p 3306 -t 30 --
docker exec -it sakilaexample bash
