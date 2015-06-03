#!/bin/sh

set -ex

VIRTUALENV_VERSION=13.0.3

curl https://pypi.python.org/packages/source/v/virtualenv/virtualenv-$VIRTUALENV_VERSION.tar.gz
tar -zxf virtualenv-$VIRTUALENV_VERSION.tar.gz

cd virtualenv-$VIRTUALENV_VERSION
python virtualenv.py $HOME/venv

$HOME/venv/pip install --force-reinstall --ignore-installed --upgrade --no-index --no-deps $HOME/slug/wheels/*.whl
