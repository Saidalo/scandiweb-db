FROM mysql:5.6
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password
EXPOSE 3306

RUN apt-get update && apt-get install -y net-tools telnet

CMD ["mysqld"]
