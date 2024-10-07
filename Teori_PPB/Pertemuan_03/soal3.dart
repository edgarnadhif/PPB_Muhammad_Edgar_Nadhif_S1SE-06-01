import 'dart:io';

void main() {
  print('Masukkan bilangan 1:');
  int bilangan1 = int.parse(stdin.readLineSync()!);

  print('Masukkan bilangan 2:');
  int bilangan2 = int.parse(stdin.readLineSync()!);

  int kpk = hitungKPK(bilangan1, bilangan2);

  print('KPK $bilangan1 dan $bilangan2 = $kpk');
}

int hitungKPK(int a, int b) {
  return (a * b) ~/ hitungFPB(a, b); 
}

int hitungFPB(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}
