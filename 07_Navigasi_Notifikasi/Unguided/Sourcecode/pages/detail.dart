// file: detail.dart
import 'package:flutter/material.dart';
import 'package:unguided_07/models/product.dart';

class DetailProduct extends StatelessWidget {
  final Product product;

  const DetailProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Detail Produk',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    product.imageUrl,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Rp ${product.harga.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              product.nama,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Colors.grey,
                ),
                SizedBox(width: 4.0),
                Text(
                  product.lokasi,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              product.deskripsi,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
