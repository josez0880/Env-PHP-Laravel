#!/bin/bash

# =========================================
# Script de Entrada para Docker
# =========================================
#
# Este script se ejecuta cuando el contenedor Docker inicia y configura
# los permisos necesarios para la aplicación Laravel.
#
# Funciones:
# - Establece el propietario correcto de los archivos
# - Configura permisos de lectura/escritura apropiados
# - Ejecuta el comando Docker original
# =========================================

# Establecer permisos correctos
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
chmod -R 775 /var/www/html/storage
chmod -R 775 /var/www/html/bootstrap/cache

# Ejecutar el comando original de Docker
exec "$@"