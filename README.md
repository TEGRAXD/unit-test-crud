## Project CRUD

Project CRUD sederhana ini dibuat oleh [Agung Kurniawan](https://github.com/agung0987) untuk membantu pembelajaran mata kuliah Pengembangan Aplikasi Web.
\
Berikut [repository utamanya](https://github.com/agung0987/CRUD-LARAVEL).

## Unit Test

Kami menggunakan Project CRUD sederhana ini untuk melakukan uji Unit Test yang dilaksanakan pada mata kuliah Pengujian Perangkat Lunak.
\
Pengujian ini menggunakan library `laravel/browser-kit-testing` untuk mempermudah uji test.

## Panduan Instalasi
- Download project atau jalankan `git clone https://github.com/suganda8/unit-test-crud.git`
- Copy `.env.example` menjadi `.env`
- Ubah pengaturan database menjadi `paw_laravel`
- Import file sql `paw_laravel.sql` ke database `paw_laravel` (Buat terlebih dahulu jika belum ada)
- Jalankan `php artisan key:generate`
- Jalankan `composer install` dan tunggu hingga selesai
- Gunakan `php artisan test` untuk menjalankan semua test, atau
- Gunakan `php artisan test --filter=[nama-file-test]`