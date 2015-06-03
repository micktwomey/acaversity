#!/bin/sh

. $HOME/venv/bin/activate

exec django-admin runserver --settings=acaversity.settings
