FROM quay.io/keycloak/keycloak:24.0.1

USER root

COPY flapi-theme /opt/keycloak/themes/flapi-theme
RUN chown -R 1000:0 /opt/keycloak/themes

USER 1000
RUN /opt/keycloak/bin/kc.sh build --features=preview
