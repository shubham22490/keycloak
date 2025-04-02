FROM quay.io/keycloak/keycloak:latest

# Set Keycloak environment variables
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_DB=dev-file

# Start Keycloak in development mode
CMD ["start-dev"]
