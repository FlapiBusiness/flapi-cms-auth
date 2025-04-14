FROM quay.io/keycloak/keycloak:latest

# Copie ton thème
COPY ./flapi-theme /opt/keycloak/themes/flapi-theme

# Build Keycloak avec ton thème
RUN /opt/keycloak/bin/kc.sh build

# Entrypoint optimisé
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized", "--hostname=localhost", "--hostname-strict=false", "--http-enabled=true"]
