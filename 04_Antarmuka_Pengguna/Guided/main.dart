import 'package:flutter/material.dart';
import 'list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: list_view(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  SizedBox(height: 30),
                  Text('Item 1'),
                ],
              ),
            ),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Item 2'),
            color: Colors.purple,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Item 3'),
            color: Colors.greenAccent,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Item 4'),
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
