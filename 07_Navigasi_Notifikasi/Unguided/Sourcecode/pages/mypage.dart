import 'package:flutter/material.dart';
import 'package:unguided_07/models/product.dart';
import 'package:unguided_07/pages/detail.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        nama: 'Mouse Gaming',
        harga: 280000.00,
        imageUrl:
            'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
        lokasi: 'Kab. Pekalongan',
        deskripsi: 'mahal bos'),
    Product(
        id: 2,
        nama: 'Keyboard',
        harga: 400000.00,
        imageUrl:
            'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1',
        lokasi: 'Kota Pekalongan',
        deskripsi: 'untuk midrange'),
    Product(
        id: 3,
        nama: 'Headphone',
        harga: 200000.00,
        imageUrl:
            'https://m.media-amazon.com/images/I/61CGHv6kmWL._AC_UF894,1000_QL80_.jpg',
        lokasi: 'Kab. Batang',
        deskripsi: 'kemurahan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tokopakedi',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                leading: Image.network(
                  product.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  product.nama,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp${product.harga.toStringAsFixed(0)}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4.0),
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
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailProduct(product: product),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
