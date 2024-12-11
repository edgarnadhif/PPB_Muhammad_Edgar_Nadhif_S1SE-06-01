import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() => counter++;

  void reset() => counter.value = 0;
}

class HomePage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            "${controller.counter}",
            style: TextStyle(fontSize: 48),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: Icon(Icons.add),
            tooltip: "Increment",
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: controller.reset,
            child: Icon(Icons.refresh),
            tooltip: "Reset",
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    GetMaterialApp(
      home: HomePage(),
    ),
  );
}
