FROM quay.io/keycloak/keycloak:24.0.1

# Set admin credentials for initial user setup
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Expose the default port used by Keycloak
EXPOSE 8080

# Set the port to be used by Keycloak on Render
ENV KEYCLOAK_HTTP_PORT=8080

# Start Keycloak in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
