#!/bin/bash

# Force admin user creation
/opt/keycloak/bin/kc.sh create-admin --user $KEYCLOAK_ADMIN --password $KEYCLOAK_ADMIN_PASSWORD

# Start in dev mode
exec /opt/keycloak/bin/kc.sh start-dev
