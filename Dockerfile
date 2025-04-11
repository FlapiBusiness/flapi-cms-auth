FROM quay.io/keycloak/keycloak:latest

# Copy your theme in the folder expected by KEYCLOAK
COPY flapi-theme/ /opt/keycloak/themes/flapi-theme

RUN echo "🎯 Contenu du dossier /opt/keycloak/themes/" && ls -la /opt/keycloak/themes/ && \
    echo "📂 Contenu de flapi-theme/login :" && ls -la /opt/keycloak/themes/flapi-theme/login

# Build the theme at the time of the image build
RUN /opt/keycloak/bin/kc.sh build
RUN /opt/keycloak/bin/kc.sh show-config | grep flapi-theme || echo "❌ flapi-theme non détecté"
RUN echo "💡 Dossier theme copié dans l'image :" && ls -R /opt/keycloak/themes/flapi-theme
