FROM quay.io/keycloak/keycloak:latest

# Copy your theme in the folder expected by KEYCLOAK
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme
