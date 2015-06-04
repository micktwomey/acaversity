#!/bin/sh

. $HOME/venv/bin/activate

echo "Starting with args $@"
exec ./venv/bin/python ./venv/bin/django-admin runserver --settings=acaversity.settings "$@"
