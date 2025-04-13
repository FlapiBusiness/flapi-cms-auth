FROM quay.io/keycloak/keycloak:24.0.1

USER root

# Copie ton thème dans le dossier attendu
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme
RUN chown -R 1000:0 /opt/keycloak/themes

USER 1000

# Build Keycloak avec ton thème
RUN /opt/keycloak/bin/kc.sh build

# Utilise le mode optimisé (plus léger, pour prod)
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized"]
