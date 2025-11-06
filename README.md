# UTS - Toko Online Laravel + Filament (Skeleton)

Repository skeleton for UTS "Toko Online" using Laravel + Filament + Spatie Media Library.
This is NOT a full Laravel project (too large to include), but a ready-to-paste skeleton
containing key files, resources, seeders, and instructions so you can create a GitHub repo
like the example your friend shared.

## What is included
- `README.md` (this file)
- `git-setup.sh` (script to initialize repo and push to GitHub)
- `stubs/` directory with key source files you'll paste into a Laravel project:
  - migrations, model, Filament Resource, Seeder, Controller, Blade views
- `.gitignore` (basic)

## How to use
1. Copy the files from `stubs/` into your Laravel project's corresponding folders:
   - `database/migrations/` -> migration file
   - `app/Models/` -> Product.php
   - `app/Filament/Resources/` -> ProductResource and its Pages folder
   - `database/seeders/` -> ProductSeeder, AdminUserSeeder
   - `app/Http/Controllers/` -> ShopController.php
   - `resources/views/shop/` -> index.blade.php, show.blade.php
2. In your Laravel project root run:
   ```
   composer require filament/filament
   composer require spatie/laravel-medialibrary
   composer require filament/spatie-laravel-media-library-plugin
   php artisan vendor:publish --provider="Spatie\MediaLibrary\MediaLibraryServiceProvider" --tag="medialibrary-migrations"
   php artisan migrate
   php artisan storage:link
   ```
3. Seed sample data:
   ```
   php artisan db:seed --class=AdminUserSeeder
   php artisan db:seed --class=ProductSeeder
   ```
4. Start dev server:
   ```
   php artisan serve
   ```

## Create GitHub repo and push (example)
- Use the `git-setup.sh` script included to initialize and push:
  ```
  sh git-setup.sh <GITHUB_REPO_URL> "uts-toko-online-filament"
  ```
  Replace `<GITHUB_REPO_URL>` with the remote URL you create on GitHub.

## Notes
- This skeleton aims to help you finish your UTS quickly. If you want, send me access to the repo after you push and I can review & adjust code.
- If you prefer, I can produce full code adapted to your exact Laravel & Filament versions — just tell me the versions or paste any error.
