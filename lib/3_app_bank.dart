// ignore_for_file: file_names

class Nasabah {
  String nama;
  String alamat;
  int saldo;

  // Parameterized Constructor
  Nasabah({required this.nama, required this.alamat, this.saldo = 0});

  // simpan
  void simpan(int jumlah) {
    saldo += jumlah;
    print(
        'Berhasil menambahkan saldo sebesar $jumlah. Saldomu sekarang: $saldo');
  }

  // ambil
  void ambil(int jumlah) {
    saldo -= jumlah;
    print('Berhasil menarik saldo sebesar $jumlah. Saldomu sekarang: $saldo');
  }

  // display
  void display() {
    print('Hai $nama, kamu beralamat di $alamat dan saldomu sebesar $saldo');
  }
}

void main(List<String> args) {
  // nasabah1
  Nasabah nasabah1 =
      Nasabah(nama: 'Farrelino Arvia Atmajaya', alamat: 'Mataram');
  // tes default
  nasabah1.display();
  // input saldo
  nasabah1.saldo = 1000000;
  nasabah1.display();
  // simpan uang
  nasabah1.simpan(300000);
  // tarik uang
  nasabah1.ambil(900000);

  // nasabah2
  Nasabah nasabah2 =
      Nasabah(nama: 'Sinta Yolandha', alamat: 'Gunungpati', saldo: 500000);
  nasabah2.display();
  // simpan
  nasabah2.simpan(400000);
  // ambil
  nasabah2.ambil(800000);

  // last checking
  nasabah1.display();
  nasabah2.display();
}
