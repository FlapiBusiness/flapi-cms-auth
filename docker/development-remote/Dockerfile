FROM quay.io/keycloak/keycloak:latest

COPY ./flapi-theme /opt/keycloak/themes/flapi-theme

RUN /opt/keycloak/bin/kc.sh build

CMD ["/opt/keycloak/bin/kc.sh", "start", "--optimized", "--hostname=localhost", "--hostname-strict=false", "--http-enabled=true"]
