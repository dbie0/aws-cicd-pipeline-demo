#!/bin/bash

# Set the service name
SERVICE_NAME="flaskapp.service"

# Stop the service gracefully
if systemctl is-active --quiet $SERVICE_NAME; then
    echo "Stopping $SERVICE_NAME service..."
    systemctl stop $SERVICE_NAME

    # Check if the service stopped successfully
    if systemctl is-active --quiet $SERVICE_NAME; then
        echo "Warning: $SERVICE_NAME did not stop. Forcing stop..."
        systemctl kill $SERVICE_NAME || echo "$SERVICE_NAME force stop failed"
    else
        echo "$SERVICE_NAME stopped successfully."
    fi
else
    echo "$SERVICE_NAME is not running."
fi

# Exit with success status
exit 0