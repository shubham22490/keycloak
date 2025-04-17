FROM quay.io/keycloak/keycloak:24.0.1
ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_HTTP_ENABLED=true
ENV KC_HTTP_PORT=10000
ENV KC_HOSTNAME_STRICT=false
ENV KC_PROXY=edge

# This is critical for Render to detect the port
EXPOSE 10000

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=10000", "--http-enabled=true"]
