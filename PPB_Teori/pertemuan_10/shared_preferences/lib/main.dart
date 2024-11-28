import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/display_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/input',
      routes: {
        '/input': (context) => InputPage(),
        '/display': (context) => DisplayPage(),
      },
    );
  }
}
