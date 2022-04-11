import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? dropdownvalue = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownvalue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 25,
      elevation: 16,
      style: TextStyle(color: Colors.blue),
      underline: Container(
        height: 3,
        color: Colors.blueAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue;
        });
      },
      items: <String>["Flutter", "Java", "Android", "Kotlin", "React Native"]
          .map<DropdownMenuItem<String>>((String val) {
        // ignore: missing_required_param
        return DropdownMenuItem<String>(
          value: val,
          child: Text(val),
        );
      }).toList(),
    );
  }
}
