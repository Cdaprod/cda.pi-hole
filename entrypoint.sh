#!/bin/bash

# Start Pi-hole with custom configurations
echo "Starting Pi-hole with custom configurations..."
/s6-init

# Custom setup commands can be added here if needed
# For example, updating gravity
pihole -g

# Tail Pi-hole logs to keep the container running
tail -F /var/log/pihole.log