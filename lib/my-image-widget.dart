import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(3),
            height: 120,
            width: 120,
            child: Image(
              // Image from network
              // image: NetworkImage(
              //     "https://avatars2.githubusercontent.com/u/42806183?s=460&u=224a1be61931272bc98a98372d89f2715cd5091e&v=4"),

              // Image from assets
              image: AssetImage("images/flutter-image.png"),
              fit: BoxFit.contain,
              //repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
