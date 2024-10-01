// Soal:
// Buatlah program Dart yang meminta input berupa sebuah bilangan bulat dari user,
// kemudian program akan mengecek apakah bilangan tersebut merupakan bilangan
// prima atau bukan.
// Sampel Input: 23
// Sampel Output: bilangan prima
// Sampel Input: 12
// Sampel Output: bukan bilangan prima

import 'dart:io';

bool cekPrima(int angka) {
  if (angka <= 1) {
    return false; 
  }
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false; 
    }
  }
  return true; 
}

void main() {
  
  print("Masukkan bilangan bulat:");
  String? input = stdin.readLineSync();
  int? angka = int.tryParse(input!);

  if (angka != null) {
    if (cekPrima(angka)) {
      print("$angka adalah bilangan prima.");
    } else {
      print("$angka bukan bilangan prima.");
    }
  } else {
    print("Input tidak valid, harap masukkan bilangan bulat.");
  }
}
