#!/bin/bash

SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)"
$SCRIPT_PATH/tools/packman/python.sh $SCRIPT_PATH/tools/scripts/link_app.py "$@"
if [ $? -ne 0 ]; then
    echo "Error"
    exit $?
else
    echo "Success"
    exit 0
fi

