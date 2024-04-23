// Mengimport package 'flutter/material.dart' yang berisi komponen UI Flutter.
// Package ini digunakan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.

import 'package:flutter/material.dart';

// Mengimport model Poli dari file 'poli.dart'.
// Model Poli digunakan untuk mendapatkan informasi tentang poli.

import '../model/poli.dart';

// Mengimport PoliDetail dari file 'poli_detail.dart'.
// Halaman PoliDetail digunakan untuk menampilkan detail poli.

import 'poli_detail.dart';

// Kelas PoliPage adalah StatefulWidget yang digunakan untuk menampilkan daftar poli.

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);
// Konstruktor PoliPage.

  @override
  State<PoliPage> createState() => _PoliPageState();
// Metode createState() digunakan untuk membuat instance dari _PoliPageState,
// yaitu state yang akan digunakan oleh PoliPage.
}

// Kelas _PoliPageState adalah state dari PoliPage.

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
// Metode build() akan dijalankan ketika _PoliPageState dirender.

    return Scaffold(
      // Scaffold adalah kelas yang menyediakan kerangka dasar untuk sebuah halaman dalam aplikasi Flutter.

      appBar: AppBar(title: const Text("Data Poli")),
      // Properti appBar digunakan untuk menampilkan AppBar di bagian atas halaman dengan judul "Data Poli".

      body: ListView(
        // Widget ListView digunakan untuk mengatur tata letak berbentuk daftar dari widget yang ada di dalamnya.

        children: [
          GestureDetector(
            // Widget GestureDetector digunakan untuk mendeteksi ketukan (tap) pada widget yang ada di dalamnya.

            child: Card(
              // Widget Card digunakan untuk membuat kotak berlapis yang berisi widget lain di dalamnya.

              child: ListTile(
                // Widget ListTile digunakan untuk menampilkan item dalam daftar dengan judul dan konten.

                title: const Text("Poli Anak"),
                // Properti title digunakan untuk menampilkan teks sebagai judul item.
              ),
            ),

            onTap: () {
              // Properti onTap digunakan untuk menentukan aksi yang akan dilakukan ketika widget di dalam GestureDetector ditekan.

              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              // Membuat objek Poli dengan nama poliAnak dan nilai namaPoli "Poli Anak".

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PoliDetail(poli: poliAnak),
                ),
              );
              // Menavigasi ke halaman PoliDetail dengan mengirimkan objek poliAnak sebagai argumen poli.
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
              // Properti title digunakan untuk menampilkan teks sebagai judul item.
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
              // Properti title digunakan untuk menampilkan teks sebagai judul item.
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
              // Properti title digunakan untuk menampilkan teks sebagai judul item.
            ),
          ),
        ],
      ),
    );
  }
}

// Kelas PoliPage ini digunakan untuk menampilkan daftar poli dalam bentuk ListView.
// Setiap item poli dapat diklik untuk menampilkan halaman detail poli menggunakan PoliDetail.