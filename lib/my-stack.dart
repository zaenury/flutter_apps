import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Stack & Align"),
        ),
        body: Stack(
          // layer 1
          children: <Widget>[
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // layer 2
            ListView(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text View",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                )
              ],
            ),
            // layer 3
            Align(
              alignment: Alignment(0, 0.8),
              child: ElevatedButton(
                child: Text("My Button"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, //background
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
