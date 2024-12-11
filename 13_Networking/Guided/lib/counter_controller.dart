import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // State yang reaktif
  void increment() => count++;
  void decrement() => count--;
}

void showSnackbar() {
  Get.snackbar(
    'Get Snackbar',
    'Ini adalah GetSnackbar',
    backgroundColor: Colors.green,
    colorText: Colors.white,
  );
}

void getBottomSheet() {
  Get.bottomSheet(Container(
    child: Text('Ini Bottom Sheet'),
  ));
}
