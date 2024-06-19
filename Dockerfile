FROM pihole/pihole:latest

# Copy custom configuration files
COPY configs/01-pihole.conf /etc/dnsmasq.d/01-pihole.conf
COPY configs/02-custom.conf /etc/dnsmasq.d/02-custom.conf

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]