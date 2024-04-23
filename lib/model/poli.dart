// Kelas Poli adalah sebuah model data yang merepresentasikan informasi tentang sebuah poli dalam aplikasi.

class Poli {
  String? id; // Properti id dengan tipe data String yang bersifat opsional (?).
  String
      namaPoli; // Properti namaPoli dengan tipe data String yang wajib (required).

  Poli({this.id, required this.namaPoli});
// Konstruktor Poli digunakan untuk membuat objek Poli dengan menginisialisasi nilai pada properti id dan namaPoli.
// Properti id bersifat opsional (nullable) karena ditandai dengan tanda tanya (?) di depan tipe datanya.
// Properti namaPoli bersifat wajib (required) karena ditandai dengan kata kunci required.
}

// Kelas Poli ini memiliki dua properti, yaitu id dan namaPoli.
// Properti id adalah identifier unik dari poli dan dapat berupa string atau null (opsional).
// Properti namaPoli adalah nama dari poli dan wajib diisi karena diberi kata kunci required pada konstruktor.

// Kelas ini digunakan untuk menyimpan dan mengakses informasi poli dalam aplikasi.
// Objek Poli dapat dibuat dengan mengisi nilai pada properti id dan namaPoli ketika membuat instansinya.