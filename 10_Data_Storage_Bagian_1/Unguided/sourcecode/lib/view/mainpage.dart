import 'package:flutter/material.dart';
import 'package:unguided10/helper/db_helper.dart';
import 'package:unguided10/view/addbiodata.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  @override
  State<MyMainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyMainPage> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _dbData = [];

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  void _refreshData() async {
    final data = await dbHelper.queryAllRows();
    setState(() {
      _dbData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _dbData.length,
              itemBuilder: (context, index) {
                final item = _dbData[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.grey[50], // Ganti warna sesuai kebutuhan
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8.0),
                    title: Text(
                      item['nama'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NIM       : ${item['nim']}'),
                        Text('Alamat  : ${item['alamat']}'),
                        Text('Hobi      : ${item['hobi']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TambahBiodataPage()),
          ).then((_) {
            _refreshData();
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
