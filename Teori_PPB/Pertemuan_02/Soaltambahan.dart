void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

// menghitung rerata ipk

  double TotalIPK = 0;
  for (var Mahasiswa in daftarMahasiswa) {
    TotalIPK += Mahasiswa['ipk'];

    double rerataIPK = TotalIPK / daftarMahasiswa.length;
    print("Rerata IPK: $rerataIPK");
  }


  // yang sudah menikah
  int jumlahMenikah = 0;
  for (var mahasiswa in daftarMahasiswa) {
    if (mahasiswa['isMarried']) {
      jumlahMenikah++;
    }
  }
  print("Jumlah mahasiswa yang sudah menikah: $jumlahMenikah");
}
