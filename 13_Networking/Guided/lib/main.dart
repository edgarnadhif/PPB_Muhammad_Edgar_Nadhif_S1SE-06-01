import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';
import 'detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Praktikum 13 - GetX',
      initialRoute: '/', // Rute awal
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/detailsPage', page: () => DetailsPage()),
      ],
    );
  }
}
