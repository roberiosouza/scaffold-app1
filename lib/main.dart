import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("App Scaffold"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Corpo do App"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("Ação 1"),
              Text("Ação 2")
            ],
          ),
        ),
      ),
    )
  ));
}