#!/bin/sh
#This script runs on pgadmin container startup

# See /pgadmin4/servers.json configuration: 
# https://www.pgadmin.org/docs/pgadmin4/development/import_export_servers.html

sed -e "s/\${POSTGRES_USER}/$POSTGRES_USER/g" \
    -e "s/\${POSTGRES_PORT}/$POSTGRES_PORT/g" \
    -e "s/\${POSTGRES_DB}/$POSTGRES_DB/g" \
    -e "s/\${POSTGRES_PASSWORD}/$POSTGRES_PASSWORD/g" \
    -e "s/\${POSTGRES_HOST}/$POSTGRES_HOST/g" \
    /tmp/servers.json.tpl > /pgadmin4/servers.json

# Start pgAdmin
exec /entrypoint.sh