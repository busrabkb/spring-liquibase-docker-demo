you should follow this steps below for run the app.
1. Open docker desktop or download docker desktop and run it
2 . docker pull liquibase/liquibase
3. docker run -d -p 3306:3306 --name mysql-docker-container -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=school -e MYSQL_USER=root -e MYSQL_PASSWORD=password mysql/mysql-server:latest
4. docker run -e INSTALL_MYSQL=true liquibase/liquibase update
5. Then run project. 
