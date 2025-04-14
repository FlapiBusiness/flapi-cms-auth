FROM quay.io/keycloak/keycloak:latest

# Ajout du thème
COPY ./flapi-theme /opt/keycloak/themes/flapi-theme

# Build le serveur avec le thème
RUN /opt/keycloak/bin/kc.sh build

# Lancer Keycloak correctement via sh -c
CMD ["sh", "-c", "/opt/keycloak/bin/kc.sh start --optimized --http-enabled=true"]
