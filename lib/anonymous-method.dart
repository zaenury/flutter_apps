import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  @override
  _AnonymousMethodState createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = "Ini adalah text";

  // Kalau cuma sekali pakai tidak butuh deklrasai method dengan nama.
  // Langsung pakai ditempat yang diinginkan
  // void clickedButton() {
  //   setState(() {
  //     message = "Tombol ini sudah ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                child: Text("tekan tombol"),
                //anonymouse method (method tanpa nama)
                onPressed: () {
                  setState(() {
                    message = "Tombol ini sudah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
