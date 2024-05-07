class Pasien {
  late int id; // Mendefinisikan properti id sebagai bilangan bulat.
  late String nama; // Mendefinisikan properti nama sebagai string.
  late String noRm; // Mendefinisikan properti noRm sebagai string.
  late String tgllahir; // Mendefinisikan properti tgllahir sebagai string.
  late String nmrtlp; // Mendefinisikan properti nmrtlp sebagai string.
  late String alamat; // Mendefinisikan properti alamat sebagai string.

  Pasien(Map pasien) {
    id = pasien[
        'id']; // Mengisi nilai properti id dengan nilai dari kunci 'id' dalam objek pasien.
    nama = pasien[
        'nama']; // Mengisi nilai properti nama dengan nilai dari kunci 'nama' dalam objek pasien.
    noRm = pasien[
        'noRm']; // Mengisi nilai properti noRm dengan nilai dari kunci 'noRm' dalam objek pasien.
    tgllahir = pasien[
        'tgllahir']; // Mengisi nilai properti tgllahir dengan nilai dari kunci 'tgllahir' dalam objek pasien.
    nmrtlp = pasien[
        'nmrtlp']; // Mengisi nilai properti nmrtlp dengan nilai dari kunci 'nmrtlp' dalam objek pasien.
    alamat = pasien[
        'alamat']; // Mengisi nilai properti alamat dengan nilai dari kunci 'alamat' dalam objek pasien.
  }
}
