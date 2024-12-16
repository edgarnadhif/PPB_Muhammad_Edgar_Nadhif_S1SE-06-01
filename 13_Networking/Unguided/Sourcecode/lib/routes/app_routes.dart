import 'package:get/get.dart';
import '../views/home_page.dart';
import '../views/add_note_page.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/add', page: () => AddNotePage()),
  ];
}
