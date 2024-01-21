#! /bin/bash
set -e

mkdir src
docker compose up -d --build
docker compose run --rm composer create-project laravel/laravel .
chmod -R 777 src
sed -i 's/DB_HOST=127.0.0.1/DB_HOST=mysql/g' src/.env 
sed -i 's/DB_PASSWORD=/DB_PASSWORD=password/g' src/.env 
docker compose run --rm artisan migrate
docker compose run --rm npm install 