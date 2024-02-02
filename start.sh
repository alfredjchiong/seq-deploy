#!/bin/bash

# Generar el hash de la contraseña
PH=$(echo "$SEQ_ADMIN_PASSWORD" | docker run --rm -i datalust/seq config hash)

# Iniciar Seq con la contraseña hash
docker run --name seq -d --restart unless-stopped -e ACCEPT_EULA=Y -e SEQ_FIRSTRUN_ADMINPASSWORDHASH="$PH" -p 8080:80 -p 5341:5341 datalust/seq
