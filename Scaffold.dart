//LAB 2
//lab2c
// 211276

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Layout Example',
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Example'),
      ),
    body: Center(
    child: Text("Hello World!"),
     ),
    );
  }
}
