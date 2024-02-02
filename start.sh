#!/bin/bash

# Generar el hash de la contraseña
PH=$(echo "$SEQ_ADMIN_PASSWORD" | docker run --rm -i datalust/seq config hash)

# Iniciar Seq con la contraseña hash
docker run \
  --name seq \
  -d \
  --restart unless-stopped \
  -e ACCEPT_EULA=Y \
  -e SEQ_API_CANONICALURI=https://seq.example.com \
  -e SEQ_FIRSTRUN_ADMINPASSWORDHASH="$PH" \
  -v /path/to/seq/data:/data \
  -p 80:80 \
  -p 5341:5341 \
  datalust/seq
