import 'package:flutter/material.dart';
import 'package:guided09/image.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageFromGalleryEx(ImageSourceType.gallery),
    );
  }
}
