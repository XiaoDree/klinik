import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import 'poli_page.dart'; // Mengimpor file poli_page.dart yang berisi halaman PoliPage.
import 'poli_update_form.dart'; // Mengimpor file poli_update_form.dart yang berisi formulir untuk mengubah data Poli.
import '../model/poli.dart'; // Mengimpor file model/poli.dart yang berisi definisi kelas Poli.

class PoliDetail extends StatefulWidget {
  final Poli poli; // Objek Poli yang akan ditampilkan detailnya.

  const PoliDetail({Key? key, required this.poli}) : super(key: key);

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Detail Poli")), // Menampilkan judul halaman "Detail Poli".
      body: Column(
        children: [
          SizedBox(height: 20), // Membuat jarak vertikal sebesar 20 piksel.
          Text(
            "Nama Poli : ${widget.poli.namaPoli}", // Menampilkan nama poli dari objek Poli.
            style: TextStyle(fontSize: 20), // Mengatur ukuran teks menjadi 20.
          ),
          SizedBox(height: 20), // Membuat jarak vertikal sebesar 20 piksel.
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Mengatur posisi elemen dalam baris menjadi merata dengan jarak yang sama di antara mereka.
            children: [
              _tombolUbah(), // Menampilkan tombol "Ubah".
              _tombolHapus(), // Menampilkan tombol "Hapus".
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliUpdateForm(
                      poli: widget
                          .poli))); // Menavigasi ke halaman PoliUpdateForm dengan objek Poli yang sama.
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .green), // Mengatur warna latar belakang tombol menjadi hijau.
        child: const Text("Ubah")); // Menampilkan teks "Ubah" di dalam tombol.
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text(
                "Yakin ingin menghapus data ini?"), // Menampilkan teks konfirmasi dalam dialog.
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Menutup dialog.
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PoliPage())); // Menavigasi ke halaman PoliPage dengan mengganti halaman yang saat ini ditampilkan.
                },
                child:
                    const Text("Ya"), // Menampilkan teks "Ya" di dalam tombol.
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .red), // Mengatur warna latar belakang tombol menjadi merah.
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Menutup dialog.
                },
                child:
                    Text("Tidak"), // Menampilkan teks "Tidak" di dalam tombol.
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .green), // Mengatur warna latar belakang tombol menjadi hijau.
              )
            ],
          );
          showDialog(
              context: context,
              builder: (context) =>
                  alertDialog); // Menampilkan dialog konfirmasi.
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .red), // Mengatur warna latar belakang tombol menjadi merah.
        child:
            const Text("Hapus")); // Menampilkan teks "Hapus" di dalam tombol.
  }
}
