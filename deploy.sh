#!/bin/bash
cd /docker/KDash
git fetch --all
git reset --hard origin/main
docker compose up -d --build --no-deps --no-recreate dash-app