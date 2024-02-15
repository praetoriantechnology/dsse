#!/bin/bash
cd defaults
unzip data.zip
cd ..
docker compose exec -T db mariadb -u root -pdevroot < defaults/data.sql
cp defaults/assets.zip assets/public
cd assets/public
unzip assets.zip
