#!/bin/bash

# Navegar a la carpeta del Dashboard en el servidor
cd /docker/KDash

# Traer los cambios limpios de GitHub ignorando basura local
git fetch --all
git reset --hard origin/main

# Reconstruir el contenedor con los nuevos gráficos o librerías
docker compose up -d --build

echo "¡Dashboard has been succesfully updated!"