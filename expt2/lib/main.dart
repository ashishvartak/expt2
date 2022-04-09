import 'package:flutter/material.dart';

//This Example is for demonstrating padding property of Container
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container example"),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(30),
          child: Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
