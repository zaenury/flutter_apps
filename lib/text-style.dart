import 'package:flutter/material.dart';

class TextStyleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Style"),
        ),
        body: Center(
          child: Text("INI ADALAH TEXT",
              style: TextStyle(
                  fontFamily: "crashlandingBB",
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.red,
                  decorationThickness: 5,
                  decorationStyle: TextDecorationStyle.wavy)),
        ),
      ),
    );
  }
}
