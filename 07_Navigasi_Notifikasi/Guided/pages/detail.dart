import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Detail product',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[300],
      ),
      body: const Center(
        child: Text('ini adalah page detail'),
      ),
    );
  }
}
