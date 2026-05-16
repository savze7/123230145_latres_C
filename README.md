# 123230145_latres_C

Aplikasi Toko Online - Latihan Responsi Praktikum TPM IF-C

**NIM:** 123230145

## Deskripsi Aplikasi

Aplikasi toko online sederhana yang menampilkan produk dari API eksternal (https://dummyjson.com/products). User dapat login, melihat daftar produk, melihat detail produk, menambahkan produk ke keranjang belanja, dan logout.

## Struktur Folder Project

```
lib/
├── main.dart                      # Entry point aplikasi, inisialisasi Hive & cek session login
├── models/
│   └── product.dart               # Model class Product untuk parsing data JSON dari API
├── services/
│   ├── api_service.dart           # Service untuk HTTP request ke API dummyjson.com
│   ├── hive_service.dart          # Service untuk operasi CRUD cart menggunakan Hive
│   └── notification_service.dart  # Service In-App Top Notification
└── screens/
    ├── login_screen.dart          # Halaman login dengan username bebas, password = 123230145
    ├── main_screen.dart           # Halaman utama dengan Bottom Navigation Bar Home & Profile
    ├── home_screen.dart           # Halaman Home berisi list produk dari API & tombol cart
    ├── detail_screen.dart         # Halaman Detail Produk terkait info produk, qty, add to cart
    ├── cart_screen.dart           # Halaman Keranjang berisi list item cart per user, hapus item
    └── profile_screen.dart        # Halaman Profile berisi info user, kesan & pesan, dan tombol logout

## Fitur Aplikasi

1. Login - Username bebas, password wajib NIM (123230145). Username disimpan di SharedPreferences.
2. Session Persistence - Setelah login, user tidak perlu login lagi saat membuka ulang aplikasi selama user belum logout.
3. Bottom Navigation - 2 tab: Home dan Profile.
4. Home - Menampilkan greeting username, tombol cart, dan list produk dari API.
5. Detail Produk - Menampilkan info lengkap produk, fitur tambah/kurangi quantity, dan tombol Add to Cart.
6. Keranjang Belanja - Menampilkan item cart per user, tombol hapus per item, dan total harga.
7. Profile - Menampilkan username, kesan & pesan, dan tombol logout.
8. In-App Top Notification - Notifikasi pop-up custom dari atas layar saat menambahkan atau menghapus produk dari keranjang.
