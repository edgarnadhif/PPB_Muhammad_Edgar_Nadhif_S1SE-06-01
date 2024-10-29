import 'package:flutter/material.dart';
import 'package:guided_pertemuan6/Beranda.dart';
import 'package:guided_pertemuan6/profile.dart';
import 'package:guided_pertemuan6/search.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  int _currentindex = 0;
  static List<Widget> _page = <Widget>[
    MyWidget(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTappedItem,
      ),
    );
  }
}
