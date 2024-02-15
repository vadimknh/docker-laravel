# docker-laravel

Docker compose services for Laravel. 
* php8.2
* nginx
* mysql
* phpmyadmin (if need, uncomment in the docker-compose.yml)
* composer
* artisan
* node js

Urls available after up docker services
* localhost (:80) - ngnix
* localhost:8080 - phpmyadmin (default credentials: db, root, password)

## Requiremenst:
* Docker + docker compose

## Use for new app

Before make check services you need in the docker-compose.yml

Make:
```bash
sh make.sh
```

Update .env file
```bash
DB_HOST=db
DB_PASSWORD=password
```

Now you have new laravel app in docker services and it's available on http://localhost

Update .gitignore with ```docker-compose/mysql```

Remove this git repo: ```rm -rf .git```
Init new laravel app project repo: ```git init```

Available commands:
```bash
docker compose stop
docker compose rm
docker compose up -d

# Examples
docker compose exec app php -v
docker compose exec app node -v
docker compose exec app composer -v
docker compose exec app php artisan migrate
docker compose exec app npm install
docker compose exec app composer require laravel/ui
docker compose exec app php artisan migrate
docker compose exec app php artisan make:controller AdminController
```

## Use for existing app

Clone files in your project.

Check services you need in the docker-compose.yml

Make:
```bash
docker compose up -d --build
```

Update .env file
```bash
DB_HOST=db
DB_PASSWORD=password
```

Update .gitignore with ```docker-compose/mysql```

Now you can have your laravel app in docker services and it's available on http://localhost