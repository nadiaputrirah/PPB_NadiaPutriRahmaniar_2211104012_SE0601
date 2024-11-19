import 'package:flutter/material.dart';
import 'package:unguided_9/image_picker_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageFromGalleryEx(),
      // MyApiPage(),
    );
  }
}