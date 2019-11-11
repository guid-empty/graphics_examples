import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    new MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Color(0xFF5451E5),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Home(),
      ),
    );
  }
}
