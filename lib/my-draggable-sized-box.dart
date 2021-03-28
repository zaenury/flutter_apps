import 'package:flutter/material.dart';

class MyDraggableAndSizedBox extends StatefulWidget {
  @override
  _MyDraggableAndSizedBoxState createState() => _MyDraggableAndSizedBoxState();
}

class _MyDraggableAndSizedBoxState extends State<MyDraggableAndSizedBox> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  bool isAccepted = false;
  Color colorTarget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Draggable And SizedBox"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                colorTarget = (value);
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: colorTarget,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
