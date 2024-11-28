import 'package:flutter/material.dart';
import '../utils/shared_prefs.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  String _name = '';
  String _nim = '';
  String _class = '';

  Future<void> loadData() async {
    _name = await SharedPrefs.getString('name') ?? 'Data tidak ditemukan';
    _nim = await SharedPrefs.getString('nim') ?? 'Data tidak ditemukan';
    _class = await SharedPrefs.getString('class') ?? 'Data tidak ditemukan';
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Tersimpan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $_name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('NIM: $_nim', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Kelas: $_class', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
