Langkah menjalankan project 

1. imporkan database ke phpmyadmin (laravel.sql)
karena jika menggunakan migrate isi db akan berbeda.

2.beberapa langkah yang mesti dilakukan :
- mengubah file env.txt -> file env laravel (.env)
- copykan command ini diterminal :
  ~ composer install 
  ~ php artisan cache:clear 
  ~ composer dump-autoload 
- lalu jalankan perintah :
  ~ composer update
  ~ composer i


Terima Kasih =)