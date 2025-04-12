FROM quay.io/keycloak/keycloak:latest

USER root

COPY flapi/ /opt/keycloak/themes/flapi
RUN chown -R 1000:0 /opt/keycloak/themes/flapi

USER 1000
RUN /opt/keycloak/bin/kc.sh build --features=preview --db=dev-mem
