import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Biodata",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          toolbarHeight: 60,
          backgroundColor: const Color.fromARGB(255, 39, 146, 233),
        ),
        body: const Padding(
          padding: EdgeInsets.all(15.0),
          child: StudentInfo(),
        ),
      ),
    );
  }
}

class StudentInfo extends StatelessWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        InfoBox(content: "Nama: Nadia Putri Rahmaniar"),
        InfoBox(content: "NIM: 2211104012"),
        InfoBox(content: "Kelas: SE0601"),
        InfoBox(content: "Prodi: Software Engineering"),
      ],
    );
  }
}

class InfoBox extends StatelessWidget {
  final String content;
  const InfoBox({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 39, 146, 233),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft, // Mengatur agar teks rata kiri
        child: Text(
          content,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
