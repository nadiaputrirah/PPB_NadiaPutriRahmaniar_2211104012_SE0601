import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Tab Bar"),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Beranda",
              ),
              Tab(
                icon: Icon(Icons.location_on),
                text: "Lokasi",
              ),
              Tab(
                icon: Icon(Icons.history_sharp),
                text: "Riwayat",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Replace with your widget for the "Menu" tab
            Center(child: Text("Page Beranda Content")),
            // Replace with your widget for the "Calendar" tab
            Center(child: Text("Page Lokasi Content")),
            // Replace with your widget for the "History" tab
            Center(child: Text("Page Riwayat Content")),
          ],
        ),
      ),
    );
  }
}
