import 'package:flutter/material.dart';
import 'package:flutter_apps/animation-on-container.dart';
import 'package:flutter_apps/anonymous-method.dart';
import 'package:flutter_apps/container.dart';
import 'package:flutter_apps/count-button.dart';
import 'package:flutter_apps/flexible-widget-app.dart';
import 'package:flutter_apps/hello-world.dart';
import 'package:flutter_apps/list-example.dart';
import 'package:flutter_apps/push_replacemenet.dart';
import 'package:flutter_apps/my-draggable-sized-box.dart';
import 'package:flutter_apps/my-image-widget.dart';
import 'package:flutter_apps/my-spacer-widget.dart';
import 'package:flutter_apps/my-stack.dart';
import 'package:flutter_apps/row-column.dart';
import 'package:flutter_apps/text-style.dart';

void main() {
  runApp(MaterialApp(
    title: 'List of flutter lesson',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of flutter lesson'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text('Hello World'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Row Column'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowColumn()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Container'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyContainer()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Count Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CountButton()),
                );
              },
            ),
            ElevatedButton(
              child: Text('List Example'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListExample()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Anonymous Method'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnonymousMethod()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Text Style'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextStyleExample()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animation on Container'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimationOnContainer()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Flexible Widget App'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlexibleWidgetApp()),
                );
              },
            ),
            ElevatedButton(
              child: Text('My Stack'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyStack()),
                );
              },
            ),
            ElevatedButton(
              child: Text('My Image Widget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyImageWidget()),
                );
              },
            ),
            ElevatedButton(
              child: Text('My Spacer Widget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MySpacerWidget()),
                );
              },
            ),
            ElevatedButton(
              child: Text('My Draggable Sized Box'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyDraggableAndSizedBox()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Multi Page Navigation'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PushReplacement()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
