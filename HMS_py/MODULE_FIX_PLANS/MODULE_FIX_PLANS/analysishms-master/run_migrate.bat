@echo off
cd /d "c:\xampp\htdocs\analysishms-master - Copy"
php artisan migrate --path=database/migrations/2026_08_25_000000_add_deptnotificationyn_to_enviro_form_table.php --force 2>&1
