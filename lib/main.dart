import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sebuah widget data2 yang membutuhkan material design
    return MaterialApp(
      // home: tampilan awal material App
      // Scaffold: sebuah tampilan dasar aplikasi android
      home: Scaffold(
        // appBar: judul aplikasi
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(child: Text("Hello World")),
      ),
    );
  }
}
