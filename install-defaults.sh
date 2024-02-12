#!/bin/bash
cd defaults
unzip data.zip
cd ../db
docker compose exec -T db mariadb -u root -pdevroot dev_app < ../defaults/data.sql
cd ..
cp defaults/assets.zip assets/public
cd assets/public
unzip assets.zip
