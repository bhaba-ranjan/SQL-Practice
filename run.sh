#!/bin/bash


docker run -e MYSQL_ROOT_PASSWORD=hello -p 3306:3306 -v  /Users/bhabaranjanpanigrahi/Workspace/Db/sakila-db:/test/ -d --name beautiful_sql --rm mysql:latest

sleep 15 

docker exec -it -w /test beautiful_sql ./load-data.sh

sleep 2

docker exec -it beautiful_sql bin/mysql