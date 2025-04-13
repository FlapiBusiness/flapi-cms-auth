FROM quay.io/keycloak/keycloak:latest

USER root

# Copie ton thème
COPY ./flapi-theme /opt/keycloak/themes/flapi-theme
RUN chown -R 1000:0 /opt/keycloak/themes

USER 1000

# Ajoute un fichier de trace
ARG BUILD_ID
RUN echo "✅ FLAPI THEME BUILD ${BUILD_ID}" > /opt/keycloak/themes/flapi-theme/BUILD_CHECK.txt

# Debug : vérifier que le thème est bien copié
RUN echo "[DEBUG] Contenu de /opt/keycloak/themes/flapi-theme/login" && ls -la /opt/keycloak/themes/flapi-theme/login

# Build Keycloak avec ton thème
RUN /opt/keycloak/bin/kc.sh build

# Entrypoint optimisé
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized", "--hostname=localhost", "--hostname-strict=false", "--http-enabled=true"]
