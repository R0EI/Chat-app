#!/bin/bash
docker build . -t chatapp:v1



docker run -d -p 3306:3306 --name mysqldata -e  MYSQL_ROOT_PASSWORD=password --network br04 --ip 172.19.0.3 mysql


docker run -d --name chat -p 80:5000 --network br04 chatapp:v1
