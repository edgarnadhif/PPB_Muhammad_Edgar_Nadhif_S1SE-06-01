import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class HomePage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GetX State Management',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                controller.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/detailsPage');
                },
                child: Text('Go to Detail Page')),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min, // Agar Row hanya selebar isi
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10), // Jarak antar tombol
          FloatingActionButton(
            onPressed: controller.decrement,
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10), // Jarak antar tombol
          FloatingActionButton(
            onPressed: showSnackbar,
            child: Icon(Icons.message),
          ),
          SizedBox(width: 10), // Jarak antar tombol
          FloatingActionButton(
            onPressed: getBottomSheet,
            child: Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
