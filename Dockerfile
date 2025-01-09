FROM debian:stretch

# Install MySQL 5.6 and additional tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       mysql-server-5.6 net-tools telnet \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

# Expose MySQL default port
EXPOSE 3306

# Start MySQL server
CMD ["mysqld"]
