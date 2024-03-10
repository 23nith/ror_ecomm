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
echo "executing rails db:prepare"
if ./bin/rails db:prepare; then
    echo "Rails database prepared successfully."
else
    echo "Error: Rails database preparation failed."
    exit 1  # Exit the script with an error status code
fi
    # Execute the specified command
    # exec "${@}"
echo "executing rails server"
./bin/rails server
# fi

echo "Rails server started successfully."
