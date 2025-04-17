FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Allow Render to assign its own PORT
ENV KC_HTTP_PORT=${PORT}
ENV KC_HOSTNAME_STRICT=false

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized", "--hostname-strict=false"]
