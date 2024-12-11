# Proyecto Laravel con Docker

Este proyecto configura un entorno de desarrollo para una aplicación Laravel utilizando Docker. Incluye servicios para la aplicación web, una base de datos MySQL y phpMyAdmin.

## Estructura del Proyecto

```
proyecto/
├── Dockerfile
├── docker-compose.yml
├── apache.conf
├── docker-entrypoint.sh
└── laravel-app/
    └── ...
```

## Requisitos

- Docker
- Docker Compose

## Configuración

1. **Dockerfile**: Configura el entorno PHP con Apache y habilita el módulo `mod_rewrite`.
2. **docker-compose.yml**: Define los servicios para la aplicación web, la base de datos MySQL y phpMyAdmin.
3. **apache.conf**: Configura Apache para servir la aplicación Laravel desde el directorio `public`.
4. **docker-entrypoint.sh**: Establece los permisos correctos para los directorios de Laravel al iniciar el contenedor.

## Instrucciones de Uso

1. Clona este repositorio y navega al directorio del proyecto.
2. Construye la imagen de Docker:
   ```bash
   docker compose build
   ```
3. Inicia los contenedores:
   ```bash
   docker compose up -d
   ```
4. Para ejecutar los comandos de laravel, accede al contenedor web:
   ```bash
   docker exec -it web bash
   ```
5. Accede a la aplicación Laravel en [http://localhost:8080](http://localhost:8080).
6. Accede a phpMyAdmin en [http://localhost:8081](http://localhost:8081).

## Comandos Útiles

- Detener los contenedores:
  ```bash
  docker compose down
  ```
- Ver logs del contenedor web:
  ```bash
  docker compose logs web
  ```
- Acceder al contenedor web:
  ```bash
  docker exec -it web bash
  ```

## Notas

- Asegúrate de que los puertos 8080 y 8081 estén disponibles en tu máquina local.
- Si realizas cambios en el `Dockerfile` o en los archivos de configuración, recuerda reconstruir la imagen con `docker compose build`.

## Contribuciones

Si deseas contribuir a este proyecto, por favor abre un issue o envía un pull request.