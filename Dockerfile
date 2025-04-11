FROM quay.io/keycloak/keycloak:latest

USER root

# Copy theme
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme

# Fix permissions
RUN chown -R 1000:0 /opt/keycloak/themes/flapi-theme

USER 1000

# Build avec profil explicite
RUN /opt/keycloak/bin/kc.sh build --spi-theme-default=flapi-theme --features=preview --db=dev-mem
