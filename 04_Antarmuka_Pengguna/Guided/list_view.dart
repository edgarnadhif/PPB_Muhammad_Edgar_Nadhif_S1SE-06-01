import 'package:flutter/material.dart';

class list_view extends StatelessWidget {
  const list_view({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan List View'),
          backgroundColor: Colors.orange,
        ),
        body: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Column(
              children: [
                Container(
                    height: 50,
                    color: Colors.blue,
                    child: const Center(
                      child: Text('test'),
                    )),
                Container(
                    height: 200,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text('test'),
                    )),
                Container(
                    height: 250,
                    color: Colors.pink,
                    child: const Center(
                      child: Text('test'),
                    )),
                Container(
                    height: 100,
                    color: Colors.green,
                    child: const Center(
                      child: Text('test'),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
