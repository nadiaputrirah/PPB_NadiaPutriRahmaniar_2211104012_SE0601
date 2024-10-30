import 'package:flutter/material.dart';

class MyBottomnav extends StatefulWidget {
  const MyBottomnav({super.key});

  @override
  State<MyBottomnav> createState() => _MyBottomnavState();
}

class _MyBottomnavState extends State<MyBottomnav> {
  int _currentIndex = 0;

  // Mengisi daftar page dengan widget yang sesuai
  static List<Widget> page = <Widget>[
    Center(child: Text("Beranda")),
    Center(child: Text("Lokasi")),
    Center(child: Text("Pengaturan")),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 6 - Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: page[_currentIndex], // Menampilkan widget sesuai index
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Lokasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Pengaturan",
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTappedItem,
      ),
    );
  }
}
