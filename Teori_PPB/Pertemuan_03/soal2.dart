import 'dart:io';

void main() {
  print('Masukkan bilangan yang dicari:');
  int valueToFind = int.parse(stdin.readLineSync()!); 
  searchIn2DList(valueToFind);
}

void searchIn2DList(int value) {
  List<List<int>> list2D = [
    [for (int i = 1; i <= 3; i++) i * 5],
    [for (int i = 1; i <= 4; i++) i * 2],
    [for (int i = 1; i <= 5; i++) i * i],
    [for (int i = 3; i <= 8; i++) i],
  ];

  print('Isi List:');
  for (var row in list2D) {
    print(row.join(' '));  
  }

  bool found = false;
  for (int i = 0; i < list2D.length; i++) {
    for (int j = 0; j < list2D[i].length; j++) {
      if (list2D[i][j] == value) {
        print('\nBilangan yang dicari: $value');
        print('$value berada di: baris ${i + 1} kolom ${j + 1}'); 
        found = true;
        break; 
      }
    }
    if (found) break; 
  }

  if (!found) {
    print('\nBilangan yang dicari: $value tidak ditemukan dalam list.');
  }
}
