#!/bin/sh
set -e

if [ ! -f main.py ]; then
	curl -sSL https://raw.githubusercontent.com/powenn/AltServer-Linux-PyScript/rewrite/main.py > main.py
fi

exec "$@"
