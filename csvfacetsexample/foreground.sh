docker run -d --name geoexample  manticoresearch/csvexample
docker exec -it csvexample sh
cd /test
tar zxvf movie_metadata.tar.gz  