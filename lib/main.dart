// Mengimport package 'flutter/material.dart' yang berisi komponen UI Flutter.
// Package ini digunakan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.

import 'package:flutter/material.dart';
import 'package:klinik_app/ui/home_page.dart';
// import '../ui/home_page.dart;
import '/GetData2.dart';
import 'ui/login_view.dart';
import '/ui/beranda.dart';
// Mengimport file 'poli_page.dart' yang berada dalam direktori '/ui'.
// File ini digunakan untuk mengatur halaman utama aplikasi klinik.

import '/ui/poli/poli_page.dart';

// Fungsi main() adalah titik masuk utama aplikasi Flutter.
// Di dalamnya, aplikasi MyApp dijalankan.

void main() => runApp(MyApp());

// Kelas MyApp merupakan kelas yang mewarisi StatelessWidget dari Flutter.
// Kelas ini bertanggung jawab untuk membangun dan mengatur konfigurasi dasar aplikasi.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// Metode build() akan dijalankan ketika MyApp dirender.

    return MaterialApp(
      // MaterialApp adalah sebuah kelas yang menyediakan konfigurasi dasar
      // untuk aplikasi Flutter.

      title: 'Klinik APP',
      // Properti 'title' adalah judul aplikasi yang akan ditampilkan
      // pada beberapa platform.

      debugShowCheckedModeBanner: false,
      // Properti 'debugShowCheckedModeBanner' digunakan untuk mengontrol
      // tampilan banner debug pada aplikasi. Nilainya diatur menjadi false
      // agar banner debug tidak ditampilkan.

      // home: PoliPage(),
      home: Beranda(),
      // home: HomePage(),
      // Properti 'home' adalah halaman utama aplikasi yang akan ditampilkan
      // ketika aplikasi dijalankan. Dalam kasus ini, halaman utama adalah
      // kelas PoliPage() yang ditampilkan melalui widget home.
    );
  }
}
