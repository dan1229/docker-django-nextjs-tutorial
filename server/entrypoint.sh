#!/bin/sh

#
# Used for deployments and development to run the server
#

until cd /app/server
do
    echo "Waiting for server volume..."
done

until ./manage.py migrate
do
    echo "Waiting for db to be ready..."
    sleep 2
done

./manage.py collectstatic --noinput

# TODO update "app_name" to your project name
gunicorn app_name.wsgi:application --bind 0.0.0.0:8000 --workers 4 --threads 4 --log-file=-