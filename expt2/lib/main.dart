import 'package:flutter/material.dart';

//Use of AppBar Example 1
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('FAMT'),
      ), //AppBar
      body: const Center(
        child: Text(
          'IT Department',
          style: TextStyle(fontSize: 24),
        ), //Text
      ), // center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  )); //MaterialApp
}
