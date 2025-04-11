FROM quay.io/keycloak/keycloak:latest

USER root

# Copy your theme in the folder expected by KEYCLOAK
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme

RUN chown -R 1000:0 /opt/keycloak/themes/flapi-theme

# Build the theme at the time of the image build
RUN /opt/keycloak/bin/kc.sh build

USER 1000
