import 'package:flutter/material.dart';

//This example explains Raised Button Widget
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = 'Flutter - Raised Button';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter - Raised Button'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  msg,
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal),
                ),
                RaisedButton(
                  child: Text(
                    "Click Here",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _changeText,
                  color: Colors.red,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg == 'Flutter - Raised Button') {
        msg = 'Changed the Text';
      } else {
        msg = 'Flutter - Raised Button';
      }
    });
  }
}
