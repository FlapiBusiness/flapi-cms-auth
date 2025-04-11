FROM quay.io/keycloak/keycloak:latest

# Copy your theme in the folder expected by KEYCLOAK
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme

# Build the theme at the time of the image build
RUN /opt/keycloak/bin/kc.sh build
