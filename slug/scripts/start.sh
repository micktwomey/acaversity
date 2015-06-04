#!/bin/sh

. $HOME/venv/bin/activate

echo "Starting with args $@"
# exec ./venv/bin/python ./venv/bin/django-admin runserver --settings=acaversity.settings "$@"

exec ./venv/bin/uwsgi --home $HOME/venv --master \
--wsgi-file $HOME/venv/lib/python2.7/site-packages/acaversity/wsgi.py \
"$@"
