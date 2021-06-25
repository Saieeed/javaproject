#!/bin/sh
mvn clean package && docker build -t com.mycompany/project1 .
docker rm -f project1 || true && docker run -d -p 9080:9080 -p 9443:9443 --name project1 com.mycompany/project1