import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPackage extends StatelessWidget {
  const MyPackage({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedValue; // Variable to hold the selected value

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pertemuan 6 - Package",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Masukkan Nama",
                border: OutlineInputBorder(),
                icon: Icon(Icons.people),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Masukkan Email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedValue,
              hint: Text("Pilihan Anda"),
              isExpanded: true,
              items: <String>['Opsi A', 'Opsi B', 'Opsi C'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                selectedValue = newValue; // Update the selected value
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: Text('ini merupakan contoh Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
