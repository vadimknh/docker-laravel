# docker-laravel

Docker compose services for Laravel. 
* localhost (:80) - ngnix
* localhost:5173 - vite server (to make available ```npm run dev```)

## Build

1. Check services you need in the docker-compose.yml
2. Run 
    ```
    docker network create -d bridge service_net
    docker compose up -d --build
    docker compose exec fpm composer create-project laravel/laravel:^10 .
    sudo chmod -R 777 src/storage/
    sudo chown -R www-data:www-data src/
    ```
3. Update src/.env
    ```bash
    DB_HOST=mysql
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

## Available commands:
```bash
docker compose down
docker compose up -d

# Some examples
docker compose exec fpm php -v
docker compose exec fpm node -v
docker compose exec fpm composer -v
docker compose exec fpm php artisan migrate
docker compose exec fpm npm install
docker compose exec fpm npm run dev
docker compose exec fpm composer require laravel/ui
docker compose exec fpm php artisan migrate
docker compose exec fpm php artisan make:controller AdminController

# or via docker container app terminal
docker compose exec -it fpm bash
php artisan migrate
... #any command
exit
```