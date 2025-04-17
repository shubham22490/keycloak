FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Copy startup script into the container
COPY startup.sh /opt/keycloak/startup.sh
RUN chmod +x /opt/keycloak/startup.sh

# Use the script as entrypoint
ENTRYPOINT ["/opt/keycloak/startup.sh"]
