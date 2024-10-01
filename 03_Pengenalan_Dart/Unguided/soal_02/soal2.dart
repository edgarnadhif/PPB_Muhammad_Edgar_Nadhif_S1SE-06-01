// Buatlah sebuah program dalam Dart yang menampilkan piramida bintang dengan
// menggunakan for loop. Panjang piramida ditentukan oleh input dari user.

import 'dart:io';

void main() {
  print("Masukkan panjang piramida:");
  String? input = stdin.readLineSync();
  int? panjang = int.tryParse(input!);

  if (panjang != null && panjang > 0) {
    for (int i = 1; i <= panjang; i++) {
      for (int j = 0; j < panjang - i; j++) {
        stdout.write(" ");
      }
      for (int k = 0; k < (2 * i - 1); k++) {
        stdout.write("*");
      }
      print("");
    }
  } else {
    print("Input tidak valid, harap masukkan angka yang benar.");
  }
}
