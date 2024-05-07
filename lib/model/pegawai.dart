class Pegawai {
  late int id; // Mendefinisikan properti id sebagai bilangan bulat.
  late String nip; // Mendefinisikan properti nip sebagai string.
  late String nama; // Mendefinisikan properti nama sebagai string.
  late String tgllahir; // Mendefinisikan properti tgllahir sebagai string.
  late String nmrtlp; // Mendefinisikan properti nmrtlp sebagai string.
  late String email; // Mendefinisikan properti email sebagai string.
  late String password; // Mendefinisikan properti password sebagai string.

  Pegawai(Map pegawai) {
    id = pegawai[
        'id']; // Mengisi nilai properti id dengan nilai dari kunci 'id' dalam objek pegawai.
    nip = pegawai[
        'nip']; // Mengisi nilai properti nip dengan nilai dari kunci 'nip' dalam objek pegawai.
    nama = pegawai[
        'nama']; // Mengisi nilai properti nama dengan nilai dari kunci 'nama' dalam objek pegawai.
    tgllahir = pegawai[
        'tgllahir']; // Mengisi nilai properti tgllahir dengan nilai dari kunci 'tgllahir' dalam objek pegawai.
    nmrtlp = pegawai[
        'nmrtlp']; // Mengisi nilai properti nmrtlp dengan nilai dari kunci 'nmrtlp' dalam objek pegawai.
    email = pegawai[
        'email']; // Mengisi nilai properti email dengan nilai dari kunci 'email' dalam objek pegawai.
    password = pegawai[
        'password']; // Mengisi nilai properti password dengan nilai dari kunci 'password' dalam objek pegawai.
  }
}
