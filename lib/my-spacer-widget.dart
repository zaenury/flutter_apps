import 'package:flutter/material.dart';

class MySpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Spacer Widget"),
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Spacer(flex: 3),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
