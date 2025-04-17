FROM quay.io/keycloak/keycloak:24.0.1

# Expose the required ports
EXPOSE 8080

# Set environment variables to configure Keycloak
ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Default Keycloak entrypoint
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
