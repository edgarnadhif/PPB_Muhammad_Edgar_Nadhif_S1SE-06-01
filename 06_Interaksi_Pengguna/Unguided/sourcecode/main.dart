import 'package:flutter/material.dart';
import 'package:guided_pertemuan6/my_bottom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottom(),
    );
  }
}
