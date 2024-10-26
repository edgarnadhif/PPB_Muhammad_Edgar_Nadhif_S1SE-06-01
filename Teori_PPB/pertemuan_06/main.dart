import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Tugas6listview(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tugas6listview extends StatelessWidget {
  const Tugas6listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    backgroundColor: Colors.orange,
                  ),
                  title: const Text(
                    "Native App",
                    style: TextStyle(color: Colors.blue, fontSize: 24),
                  ),
                  onTap: () {
                    _showDetailDialog(
                        context, "Detail", "Native App", 'Android, IOS');
                  },
                ),
              ),
            ),
            const SizedBox(height: 5),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    backgroundColor: Colors.grey,
                  ),
                  title: const Text(
                    "Hybrid App",
                    style: TextStyle(color: Colors.blue, fontSize: 24),
                  ),
                  onTap: () {
                    _showDetailDialog(context, "Detail", "Hybrid App",
                        "Android, IOS, Javascript, Dart");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showDetailDialog(BuildContext context, String title, String description,
    String description2) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.lightBlue[50],
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(description,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(description2),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              "Close",
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
