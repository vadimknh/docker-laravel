#!/bin/bash
set -e

docker compose up -d --build
docker compose exec app composer create-project laravel/laravel tmp

mv ./tmp/* .
mv ./tmp/.env .
mv ./tmp/.editorconfig .
mv ./tmp/.env.example .
mv ./tmp/.gitignore .
mv ./tmp/.gitattributes .
rm -fr ./tmp/
