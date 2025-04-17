FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Copy startup.sh from the local directory into the container
COPY startup.sh /opt/keycloak/startup.sh

# Mark it as executable
# RUN chmod +x /opt/keycloak/startup.sh

# Run the script
ENTRYPOINT ["/opt/keycloak/startup.sh"]
