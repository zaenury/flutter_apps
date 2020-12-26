import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(new ListExample());
}

class ListExample extends StatefulWidget {
  @override
  _ListExampleState createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  List<Widget> widgets = [];
  int counter = 1;

  // Untuk menampilkan view list saja dengan for, maka datanya dimasukkan ke constructor
  // _ListExampleState() { // constructor
  //   for (int i = 0; i < 50; i++) {
  //     widgets.add(Text(
  //       "Bilangan ke-" + i.toString(),
  //       style: TextStyle(fontSize: 20),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Example"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "Bilangan ke -" + counter.toString(),
                        style: TextStyle(fontSize: 30),
                      ));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                    child: Text("Hapus Data"),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    }),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

class CountButton extends StatefulWidget {
  @override
  _CountButtonState createState() => _CountButtonState();
}

class _CountButtonState extends State<CountButton> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                child: Text("Tekan Saya"),
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
          margin: EdgeInsets.all(10),
          // margin: EdgeInsets.only(bottom: 10, top: 10),
          child: Container(
            // color: Colors.blue,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
          ),
        ),
      ),
    );
  }
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
