#!/bin/bash
sftp admin@13.49.184.119:/opt/dumps/assets.zip /tmp/assets.zip
sftp admin@13.49.184.119:/opt/dumps/dbdev.zip /tmp/dbdev.zip
unzip /tmp/assets.zip
unzip /tmp/dbdev.zip
rm -f /tmp/assets.zip
rm -f /tmp/dbdev.zip
docker compose cp opt/dumps/dbdev.sql db:/tmp/dbdev.sql
docker compose cp db-inside.sh db:/tmp/db-inside.sh
docker compose exec db /tmp/db-inside.sh
mv -f mnt/assets/private/* assets/private/
mv -f mnt/assets/public/* assets/public/
rm -rf mnt
rm -rf opt