# Imagen base ligera con servidor web Nginx
FROM nginx:alpine

# Eliminar archivos por defecto de Nginx (opcional, buena práctica)
RUN rm -rf /usr/share/nginx/html/*

# Copiar los archivos de nuestra aplicación (HTML, CSS e imágenes) al servidor
COPY . /usr/share/nginx/html

# Exponer el puerto 80 donde escucha Nginx dentro del contenedor
EXPOSE 80