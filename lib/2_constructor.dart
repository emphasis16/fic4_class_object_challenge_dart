// ignore_for_file: file_names

import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  // Default Constructor + Parameterized
  Mahasiswa({this.nama = 'Jono', this.jurusan = 'TFLM', this.angkatan = 23});

  // Named Constructor
  factory Mahasiswa.fromJson(String jsonString) {
    Map<dynamic, dynamic> jsonData = jsonDecode(jsonString);
    return Mahasiswa(
      nama: jsonData['nama'],
      jurusan: jsonData['jurusan'],
      angkatan: jsonData['angkatan'],
    );
  }

  // display
  void dispplay() {
    print(
        '$nama adalah seorang siswa dari jurusan $jurusan pada angkatan ke-$angkatan');
  }
}

void main(List<String> args) {
  // Tes Def + Par Constructor
  Mahasiswa siswa1 = Mahasiswa(
    nama: 'Farrelino',
    angkatan: 19,
    jurusan: 'SIJA',
  );
  siswa1.dispplay();

  // Tes Named
  String stringJson =
      '{"nama": "Sinta Yolandha", "jurusan": "KGSP", "angkatan": 25}';
  Mahasiswa siswa2 = Mahasiswa.fromJson(stringJson);
  siswa2.dispplay();
}
