FROM mysql:5.6
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password
EXPOSE 3306

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       net-tools telnet \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


CMD ["mysqld"]
