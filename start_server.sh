#!/bin/sh

echo "start_server.sh executing"

# Check if a process with PID 7 exists
if ps -p 7 > /dev/null; then
    echo "Killing process with PID 7"
    kill -9 7
fi

echo "executing docker-entrypoint"
./docker-entrypoint

