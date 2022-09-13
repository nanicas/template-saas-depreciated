## About
```
docker compose up -d —build

composer install
npm install

php artisan vendor:publish --tag="lego_auth:migrations"
php artisan vendor:publish --tag="lego_auth:routes"
php artisan vendor:publish --tag="lego_auth:views"
php artisan vendor:publish --tag="lego_auth:assets"

php artisan vendor:publish --tag="template_core:routes"
php artisan vendor:publish --tag="template_core:resources"
php artisan vendor:publish --tag="template_core:public"
php artisan vendor:publish --tag="template_core:views"

npm run dev
```

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
