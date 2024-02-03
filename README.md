# docker-laravel-10

Docker compose services for laravel development. 

For mysql credentials check docker-compose.yml 

# Requiremenst:
* Docker + docker compose

## Inside:
* php8.2
* nginx
* mysql(mariadb)
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

Now you can have full ready clean laravel app in the src/ folder. You can develop.

In case to wrapp existing app:
```bash
# run wrap
sudo sh wrap.sh
# then move laravel app to /src/
# comment in wrap.sh mkdir src and uncomment all others
# run again wrap
sudo sh wrap.sh
```

Docker stop:
```bash
docker compose stop
docker compose rm
```
Docker start after stopping:
```bash
docker compose up -d
```

In case of total rebuild:
```bash
docker compose stop
docker compose rm
sudo sh remove.sh
sudo sh make.sh
```

Using services (examples):
```bash
docker compose run --rm artisan migrate
docker compose run --rm npm install
docker compose run --rm composer require laravel/ui
...
```
