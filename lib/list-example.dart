import 'package:flutter/material.dart';

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
                ElevatedButton(
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
                ElevatedButton(
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
