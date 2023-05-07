// ignore_for_file: file_names

class Kucing {
  String? nama;
  int? umurTahun;
  int? umurBulan;

  void display() {
    print('Kucing ini bernama $nama');
    print('Kucing ini berumur $umurTahun tahun atau $umurBulan bulan');
  }
}

void main(List<String> args) {
  Kucing kucing1 = Kucing();
  kucing1.nama = 'Meong';
  kucing1.umurTahun = 3;
  kucing1.umurBulan = 12;

  // cetak
  print('Nama kucing: ${kucing1.nama}');
  print('Umur kucing dalam tahun: ${kucing1.umurTahun}');
  print('Umur kucing dalam bulan: ${kucing1.umurBulan}');

  // display
  kucing1.display();
}
