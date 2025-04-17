FROM quay.io/keycloak/keycloak:24.0.1
ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV PORT=8080
ENV KC_HTTP_PORT=8080
EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
