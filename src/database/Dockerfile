FROM mysql:8

ENV MYSQL_ROOT_PASSWORD superstrongpassword
ENV MYSQL_USER user
ENV MYSQL_PASSWORD example
ENV MYSQL_DATABASE Database_users
COPY ./create_database.sql /docker-entrypoint-initdb.d

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld","--default-authentication-plugin=mysql_native_password"]

