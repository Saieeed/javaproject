@echo off
call mvn clean package
call docker build -t com.mycompany/project1 .
call docker rm -f project1
call docker run -d -p 9080:9080 -p 9443:9443 --name project1 com.mycompany/project1