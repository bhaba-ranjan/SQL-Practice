#!/bin/bash

MYSQL_USER="root"
MYSQL_PASSWORD="hello"
NEW_DATABASE="sakila"
SCHEMA_FILE="./sakila-schema.sql"
DATA_FILE="./sakila-data.sql"

# Create a MySQL configuration file
echo "[client]" > ~/.my.cnf
echo "user=$MYSQL_USER" >> ~/.my.cnf
echo "password=$MYSQL_PASSWORD" >> ~/.my.cnf

# Log in to MySQL and create the new database
mysql -e "CREATE DATABASE IF NOT EXISTS $NEW_DATABASE"

# Log in to MySQL and source the schema file
mysql $NEW_DATABASE < $SCHEMA_FILE

# Log in to MySQL and source the data file
mysql $NEW_DATABASE < $DATA_FILE
