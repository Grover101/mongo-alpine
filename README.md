# Imagen Docker de Mongo Alpine

[![docker_pulls_badge](https://img.shields.io/docker/pulls/grover101/mongo-alpine.svg?style=flat&logo=docker)](https://hub.docker.com/r/grover101/mongo-alpine)
[![license_badge](https://img.shields.io/github/license/grover101/mongo-alpine.svg)](LICENSE)
[![docker_build_badge](https://img.shields.io/docker/automated/grover101/mongo-alpine.svg?style=flat&logo=docker)](https://hub.docker.com/r/grover101/mongo-alpine)
[![Static Badge](https://img.shields.io/badge/mongo-alpine?style=flat&logo=github&label=GitHub)](https://github.com/Grover101/mongo-alpine)

Esta es una imagen Docker de MongoDB basada en Alpine Linux. La imagen se ha optimizado para un tamaño pequeño y es adecuada para usar en entornos de desarrollo o producción donde se necesita una base de datos MongoDB.

## Uso

Para utilizar esta imagen Docker, puedes seguir estos pasos:

1. **Descarga la imagen**: Puedes descargar la imagen desde Docker Hub usando el siguiente comando:

   ```sh
   docker pull grover101/mongo-alpine
   ```

2. **Ejecuta un contenedor**: Una vez que tengas la imagen descargada, puedes ejecutar un contenedor utilizando el siguiente comando:

   ```sh
   docker run -d -p 27017:27017 --name mongodb grover101/mongo-alpine
   ```

   Esto ejecutará un contenedor de MongoDB en segundo plano y expondrá el puerto 27017, que es el puerto predeterminado de MongoDB.

3. **Para acceder a la linea de comando**: Para ejecutar una sesión de shell

   ```sh
   docker exec -it mongodb sh
   ```

4. **Accede a la base de datos**: Ahora puedes acceder a la base de datos MongoDB desde tu aplicación u otras herramientas. La dirección IP del servidor será la dirección IP de tu máquina local si estás utilizando Docker Desktop.

## Personalización

Si deseas personalizar la configuración de tu base de datos MongoDB, puedes crear un Dockerfile similar al siguiente:

```Dockerfile
FROM grover101/mongo-alpine

# Agrega tus configuraciones aquí
```

Luego, construye tu propia imagen basada en esta imagen y agrega tus configuraciones personalizadas.
