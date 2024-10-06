

// void main(){
//   int a =10;
//   int b = 5;
//   print(a > b ? true : false);

//   if (a >= b) {
//     print('benar');
//   } else { 
//     print ("salah");
//   }
// }

// List <String> daftatrMahasiswa (List<String>mahasiswa){
// mahasiswa.add('dendi');
// return mahasiswa;
// }


// double rerataIPK(List<double>a) => a.reduce((a,b) => a + b) / a.length;

// void main (){
//   print(rerataIPK([3.9,3.88,3.77,4.00,3.55]));

// }


// class

import 'dart:async';
import 'dart:io';

class animal {
  String name;
  int age;
  int foot;
  String foodType;
  animal (this.name, this.age, this.foot, this.foodType);
}

class mahasiswa { 
  String nama;
  int nim;
  mahasiswa (this.nama, this.nim);
}

void main() {
  animal cat = animal("robi", 2,4,'wiskas');
  print(cat.name);
  print(cat.age);
  print(cat.foot);
  print(cat.foodType);

  mahasiswa se06a = mahasiswa('ofa', 2211104019);
  print(se06a.nama);
  print(se06a.nim);
}

class cat extends animal {
  cat (String name, int age, int foot, String foodtype) : super (name, age, foot, foodtype);

  void suara (){
    print('miaww');
  }

}