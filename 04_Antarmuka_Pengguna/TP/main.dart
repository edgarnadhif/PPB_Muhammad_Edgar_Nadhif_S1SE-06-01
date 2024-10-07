import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Rekomendasi Wisata', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30))),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Museum Batik',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 16),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/1f/Museum_Batik_Pekalongan.jpg',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 16),
                Container(
                  width: 300,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Gedung museum ini sebelumnya adalah bekas kantor balai kota Pekalongan, pada masa penjajahan kolonial Belanda gedung tersebut merupakan kantor keuangan yang membawahi tujuh pabrik gula di karesidenan Pekalongan.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Kunjungi Tempat', style: TextStyle(color: Colors.white,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
