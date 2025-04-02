FROM docker.io/bitnami/keycloak:latest

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_DB=dev-file

CMD ["start-dev"]
