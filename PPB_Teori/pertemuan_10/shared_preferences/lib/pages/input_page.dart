import 'package:flutter/material.dart';
import '../utils/shared_prefs.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _classController = TextEditingController();

  Future<void> saveData() async {
    await SharedPrefs.setString('name', _nameController.text);
    await SharedPrefs.setString('nim', _nimController.text);
    await SharedPrefs.setString('class', _classController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data berhasil disimpan!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(labelText: 'NIM'),
            ),
            TextField(
              controller: _classController,
              decoration: InputDecoration(labelText: 'Kelas'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveData,
              child: Text('Simpan Data'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/display');
              },
              child: Text('Lihat Data'),
            ),
          ],
        ),
      ),
    );
  }
}
