import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Belajar Package',
          style: GoogleFonts.poppins(), // Contoh penggunaan GoogleFonts
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "masukan nama",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "masukan Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ))
          ],
        ),
      ),
    );
  }
  
}
