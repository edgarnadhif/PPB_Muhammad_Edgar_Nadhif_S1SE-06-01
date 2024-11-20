import 'package:flutter/material.dart';
import 'package:unguided10/helper/db_helper.dart';

class TambahBiodataPage extends StatefulWidget {
  const TambahBiodataPage({super.key});

  @override
  _TambahBiodataPageState createState() => _TambahBiodataPageState();
}

class _TambahBiodataPageState extends State<TambahBiodataPage> {
  final DatabaseHelper dbHelper = DatabaseHelper();

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _hobiController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _nimController.dispose();
    _alamatController.dispose();
    _hobiController.dispose();
    super.dispose();
  }

  // Fungsi untuk menambahkan data mahasiswa ke database
  void _addMahasiswa() async {
    if (_namaController.text.isNotEmpty &&
        _nimController.text.isNotEmpty &&
        _alamatController.text.isNotEmpty &&
        _hobiController.text.isNotEmpty) {
      await dbHelper.insert({
        'nama': _namaController.text,
        'nim': _nimController.text,
        'alamat': _alamatController.text,
        'hobi': _hobiController.text,
      });

      // Setelah menambahkan data, kembali ke halaman pertama
      Navigator.pop(context);
    } else {
      // Menampilkan pesan error jika form belum lengkap
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Semua kolom harus diisi')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: InputDecoration(
                labelText: 'Nama',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(
                labelText: 'NIM',
                prefixIcon: Icon(Icons.book_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _alamatController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                prefixIcon: Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _hobiController,
              decoration: InputDecoration(
                labelText: 'Hobi',
                prefixIcon: Icon(Icons.try_sms_star),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: _addMahasiswa,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber, // Warna latar belakang tombol
                foregroundColor: Colors.white, // Warna teks tombol
              ),
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
