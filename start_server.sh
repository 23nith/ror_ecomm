#!/bin/sh

echo "start_server.sh executing"

# Check if a process with PID 7 exists
if ps -p 7 > /dev/null; then
    echo "Killing process with PID 7"
    kill -9 7
fi

echo "testing.."

# Ensure the server.pid file does not exist to prevent conflicts
# if [ -f tmp/pids/server.pid ]; then
#     echo "Removing existing server.pid file"
#     rm tmp/pids/server.pid
# fi

# Attempt to start the Rails server
# if [ "${1}" == "./bin/rails" ] && [ "${2}" == "server" ]; then

echo "executing rails server"
exec ./bin/rails server



echo "Rails server started successfully."
