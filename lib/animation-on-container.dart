import 'dart:math';

import 'package:flutter/material.dart';

class AnimationOnContainer extends StatefulWidget {
  @override
  _AnimationOnContainerState createState() => _AnimationOnContainerState();
}

class _AnimationOnContainerState extends State<AnimationOnContainer> {
  Random random = Random(); // auto import 'dart:math';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animation Widget"),
        ),
        body: Center(
          // Pakai GestureDetector karena AnimatedContainer tidak punya event didalamnya.
          child: GestureDetector(
            onTap: () {
              setState(() {}); // hanya merefresh halaman
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(201),
              height: 50.0 + random.nextInt(201),
            ),
          ),
        ),
      ),
    );
  }
}
