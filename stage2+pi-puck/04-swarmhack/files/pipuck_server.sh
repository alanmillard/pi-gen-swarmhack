#!/bin/bash -e

SCRIPT=pipuck_server.py

if [ -f "$SCRIPT" ]; then
	python3 $SCRIPT
else
	sleep 5
fi
