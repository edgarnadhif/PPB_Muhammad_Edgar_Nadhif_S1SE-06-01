// tugas 1 

// Buatlah sebuah fungsi dalam Dart yang menerima sebuah nilai dari user, lalu melakukan percabangan untuk memberikan output berdasarkan kondisi berikut:
// Deskripsi :
// a. Jika nilai lebih besar dari 70, program harus mereturn "Nilai A".
// b. Jika nilai lebih besar dari 40 tetapi kurang atau sama dengan 70, program harus
// mereturn "Nilai B".
// c. Jika nilai lebih besar dari 0 tetapi kurang atau sama dengan 40, program harus
// mereturn "Nilai C".
// d. Jika nilai tidak memenuhi semua kondisi di atas, program harus mereturn teks
// kosong.

import 'dart:io';
String CekNilai (int nilai){
  if (nilai > 70){
  return "Nilai A";
  } else if (nilai> 40 && nilai <= 70){
  return "Nilai B";
  } else if (nilai > 0 && nilai <= 40){
    return "Nilai C";
  } else {
    return "Nilai kosong";
  }
}

void main (){
  print("masukan Nilai anda : ");
  String? input = stdin.readLineSync();
  int? nilai = int.tryParse(input!);

  if (nilai != null) {
    String hasil = CekNilai(nilai);
    print(hasil.isNotEmpty ? hasil : "Nilai tidak valid");
  } else {
    print("input angka yang valid");
  }
}