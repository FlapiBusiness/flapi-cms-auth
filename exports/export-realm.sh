#!/bin/bash

# Empêche Git Bash de convertir les chemins
export MSYS_NO_PATHCONV=1

# Config
KC_USER="modricfoot@gmail.com"
KC_PASSWORD=""
KC_REALM="master"
KC_CLIENT_ID="admin-cli"
KC_HOST="http://localhost:8080"
EXPORTS_DIR="./exports"
REALM_EXPORT_FILE="$EXPORTS_DIR/realm-export.json"

# Obtenir l'access token
RAW_RESPONSE=$(curl -s \
  -d "client_id=$KC_CLIENT_ID" \
  -d "username=$KC_USER" \
  -d "password=$KC_PASSWORD" \
  -d "grant_type=password" \
  "$KC_HOST/realms/$KC_REALM/protocol/openid-connect/token")

ACCESS_TOKEN=$(echo "$RAW_RESPONSE" | grep -o '"access_token":"[^"]*"' | sed 's/"access_token":"\(.*\)"/\1/')

if [ -z "$ACCESS_TOKEN" ]; then
  echo "❌ Échec : aucun token reçu"
  echo "$RAW_RESPONSE"
  exit 1
fi

# Crée le dossier exports si besoin
mkdir -p "$EXPORTS_DIR"

# Récupère TOUTES les données du realm et sauvegarde dans un fichier JSON
curl -s -H "Authorization: Bearer $ACCESS_TOKEN" "$KC_HOST/admin/realms/$KC_REALM" > "$REALM_EXPORT_FILE"

# Vérifie si le fichier a bien été sauvegardé
if [ -s "$REALM_EXPORT_FILE" ]; then
  echo "✅ Export du realm terminé. Fichier disponible ici : $REALM_EXPORT_FILE"
else
  echo "❌ Échec de l'export : fichier vide ou non trouvé."
fi
