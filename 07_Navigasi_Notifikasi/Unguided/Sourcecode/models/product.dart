class Product {
  final int id;
  final String nama;
  final double harga;
  final String imageUrl;
  final String lokasi;
  final String deskripsi;

  Product({
    required this.id,
    required this.nama,
    required this.harga,
    required this.imageUrl,
    required this.lokasi,
    required this.deskripsi,
    thisripsi,
  });

  // untuk mengkonveri json ke object product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      nama: json["nama"],
      harga: json["harga"].toDouble(),
      imageUrl: json["imageUrl"],
      lokasi: json["lokasi"],
      deskripsi: json["deskripsi"],
    );
  }
}
