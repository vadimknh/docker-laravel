# docker-laravel-10

Docker compose services for laravel development. 

# Requiremenst:
* Docker + docker compose

## Inside:
* php8.2
* nginx
* mysql(mariabd)
* phpmyadmin
* composer
* artisan
* node js

## Urls and ports:
* localhost (:80) - ngnix
* localhost:8080 - phpmyadmin

## Usage
Check params in make.sh.

Run make:
```bash
sudo sh make.sh
```

Now you can have full ready laravel in the src/ folder. You can develop.

Docker stop:
```bash
docker compose stop
```

In case of total rebuild:
```bash
docker compose stop
docker compose rm
sudo sh remove.sh
sudo sh make.sh
```
