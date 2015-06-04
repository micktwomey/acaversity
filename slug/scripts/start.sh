#!/bin/sh

. $HOME/venv/bin/activate

exec ./venv/bin/python ./venv/bin/django-admin runserver --settings=acaversity.settings
