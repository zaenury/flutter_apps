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
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: Text(
                  "Saya sedang melatih kemampuan flutter saya",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                  // textAlign: TextAlign.center, // Rata tengah
                  // maxLines: 2, // Maximum line available
                  // overflow: TextOverflow.ellipsis, // The text is longer than maxLines will be ...
                ))),
      ),
    );
  }
}

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children: <Widget>[
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6")
              ],
            )
          ],
        ),
      ),
    );
  }
}
