// Import library yang diperlukan
import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import '../model/poli.dart'; // Mengimpor file model/poli.dart yang berisi definisi kelas Poli.
import '../ui/poli_detail.dart'; // Mengimpor file ui/poli_detail.dart yang berisi halaman PoliDetail.

// Deklarasi kelas PoliForm
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  _PoliFormState createState() => _PoliFormState();
}

// Deklarasi kelas _PoliFormState sebagai state dari PoliForm
class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<
      FormState>(); // Membuat GlobalKey untuk mengakses state dari Form.
  final _namaPoliCtrl =
      TextEditingController(); // Membuat TextEditingController untuk mengelola inputan teks pada TextField.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Poli")), // Menampilkan judul halaman "Tambah Poli" pada AppBar.
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Mengatur GlobalKey pada Form.
          child: Column(
            children: [
              _fieldNamaPoli(), // Menampilkan field untuk menginputkan nama poli.
              SizedBox(height: 20), // Membuat jarak vertikal sebesar 20 piksel.
              _tombolSimpan(), // Menampilkan tombol "Simpan".
            ],
          ),
        ),
      ),
    );
  }

  // Method untuk menampilkan field nama poli
  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nama Poli"), // Mengatur label teks untuk TextField.
      controller:
          _namaPoliCtrl, // Menghubungkan TextEditingController dengan TextField.
    );
  }

  // Method untuk menampilkan tombol simpan
  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(
              namaPoli: _namaPoliCtrl
                  .text); // Membuat objek Poli dengan nama poli yang diambil dari inputan teks.
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliDetail(
                      poli:
                          poli))); // Menavigasi ke halaman PoliDetail dengan objek Poli yang baru dibuat.
        },
        child:
            const Text("Simpan")); // Menampilkan teks "Simpan" di dalam tombol.
  }
}
