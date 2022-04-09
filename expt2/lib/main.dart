import "package:flutter/material.dart";

//Use of AppBar Example 2
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("FAMT"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ), //AppBar
      body: const Center(
        child: Text(
          'IT Department',
          style: TextStyle(fontSize: 24),
        ), //Text
      ), //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  )); //MaterialApp
}
