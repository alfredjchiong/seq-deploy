# Usar la imagen datalust/seq:latest como base
FROM datalust/seq:latest

# Establecer variables de entorno necesarias
ENV ACCEPT_EULA=Y

# Exponer el puerto para la interfaz web y la ingesta de registros
EXPOSE 80
EXPOSE 5431

# El comando por defecto para iniciar Seq, no es necesario especificarlo si se usa el comando por defecto de la imagen base
