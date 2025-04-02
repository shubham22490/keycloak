FROM quay.io/keycloak/keycloak:latest

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_DB=postgres
ENV KC_HTTP_PORT=8080
ENV KC_HOSTNAME=0.0.0.0
ENV KC_DB_URL=postgresql://keycloak_5yl1_user:CVihhIvvYSkBuhzGV8iAk1sN1cz6YEot@dpg-cvmkeq3e5dus73f7iedg-a.singapore-postgres.render.com/keycloak_5yl1
ENV KC_DB_USERNAME=keycloak_5yl1_user
ENV KC_DB_PASSWORD=CVihhIvvYSkBuhzGV8iAk1sN1cz6YEot

EXPOSE 8080

CMD ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=8080"]

