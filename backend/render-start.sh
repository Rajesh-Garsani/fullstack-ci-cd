#!/bin/bash
python manage.py collectstatic --noinput
gunicorn backend_project_name.wsgi:application --bind 0.0.0.0:$PORT
