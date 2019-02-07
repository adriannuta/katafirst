docker run -d --name csvexample  manticoresearch/csvexample
docker exec -it csvexample sh
cd /test
tar zxvf movie_metadata.tar.gz  