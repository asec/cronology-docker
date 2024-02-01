#!/bin/sh
chmod +x ./install/docker.sh ./install/certbot.sh

read -p "App domain: " crnlg_app_domain
read -p "Let's Encrypt notification e-mail address: " crnlg_app_email

./install/docker.sh
./install/certbot.sh

sudo certbot certonly --standalone -n --agree-tos -d $crnlg_app_domain -m $crnlg_app_email

if [ ! -e .env ]
then
  cp .env.example .env
fi

sed -i "s^{APP_DOMAIN}^${crnlg_app_domain}^g" .env

chmod +x ./docker-up.sh ./docker-down.sh

sudo docker login

./docker-up.sh