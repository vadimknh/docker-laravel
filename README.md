# docker-laravel

Docker compose services for Laravel. 
* php8.2
* nginx
* mysql
* phpmyadmin (if need, uncomment in the docker-compose.yml)
* composer
* artisan
* node js

## Urls available after up docker services
* localhost (:80) - ngnix
* localhost:8080 - phpmyadmin (default credentials: db, root, password)
* localhost:5173 - vite server (to make available ```npm run dev```)

## Requirements:
* Docker + docker compose

## Use for new app

1. Check services you need in the docker-compose.yml
2. Run cmd in terminal ```sh make.sh```
3. Update .env
    ```bash
    DB_HOST=db
    DB_PASSWORD=password
    ```
4. Update vite.config.js with server settings (to make available ```npm run dev```)
    ```js
    export default defineConfig({
        server: {
            host: '0.0.0.0',
            port: 5173,
            hmr: {
                host: '127.0.0.1',
            },
        },
        plugins: [ ...
    ```
5. Add to .gitignore ```docker-compose/mysql```
6. Replace git repository for your project
    1.  Run cmd in terminal ```rm -rf .git```
    2.  Run cmd in terminal ```git init```

Now you have new Laravel app in docker services and it's available on http://localhost

## Use for existing app

1. Clone files to your project
2. Check services you need in the docker-compose.yml
3. Run cmd in terminal ```docker compose up -d --build```
4. Update .env
    ```bash
    DB_HOST=db
    DB_PASSWORD=password
    ```
5. Add to .gitignore ```docker-compose/mysql```

Now you can have your laravel app in docker services and it's available on http://localhost

## Available commands:
```bash
docker compose down
docker compose up -d

# Some examples
docker compose exec app php -v
docker compose exec app node -v
docker compose exec app composer -v
docker compose exec app php artisan migrate
docker compose exec app npm install
docker compose exec app npm run dev
docker compose exec app composer require laravel/ui
docker compose exec app php artisan migrate
docker compose exec app php artisan make:controller AdminController

# or via docker container app terminal
docker compose exec -it app bash
php artisan migrate
... #any command
exit
```