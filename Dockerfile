FROM quay.io/keycloak/keycloak:latest

# Copy your theme in the folder expected by KEYCLOAK
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme

# Debug pour voir le contenu réel
RUN ls -l /opt/keycloak/themes/ && \
    ls -l /opt/keycloak/themes/flapi-theme/ && \
    ls -l /opt/keycloak/themes/flapi-theme/login/

# Build the theme at the time of the image build
RUN /opt/keycloak/bin/kc.sh build
