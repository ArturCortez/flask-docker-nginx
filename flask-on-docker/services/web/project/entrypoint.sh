#!/bin/sh

if ["$DATABASE" = "postgres" ]
then 
    echo "Waiting for Postgres..."

while ! nc -z $SQL_HOST $SQL_PORT; do
    sleep 0.1
done

echo "Postgres Started"

fi

python manage create_db

exec "$@"