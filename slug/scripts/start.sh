#!/bin/sh

. /venv/bin/activate

exec django-admin runserver --settings=acaversity.settings
