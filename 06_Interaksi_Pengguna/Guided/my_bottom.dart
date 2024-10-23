import 'package:flutter/material.dart';
import 'package:guided_pertemuan06/my_package.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  int _currentindex = 0;
  static List<Widget> _page = <Widget>[MyWidget(), MyWidget()];

  void _onTappedItem(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom bar"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: _page[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTappedItem,
      ),
    );
  }
}
