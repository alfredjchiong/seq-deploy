FROM datalust/seq

# Copiar el script de inicio
COPY start.sh /start.sh

# Dar permisos de ejecución al script
RUN chmod +x /start.sh

# Establecer la variable de entorno (deberías establecer tu propia contraseña aquí)
ENV SEQ_ADMIN_PASSWORD="<password>"

# Ejecutar el script de inicio
CMD ["/start.sh"]
