FROM quay.io/keycloak/keycloak:24.0.1

ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false
ENV KC_PROXY_HEADERS=edge

EXPOSE 10000

ENTRYPOINT ["sh", "-c"]
CMD ["/opt/keycloak/bin/kc.sh start-dev --http-port=$PORT --http-enabled=true"]
