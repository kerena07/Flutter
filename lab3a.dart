//LAB 3
//lab3a
// 211276
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Tutorial",
  home: TextAlignScreen(),
));

class TextAlignScreen extends StatefulWidget {
  @override
  _TextAlignScreenState createState() => _TextAlignScreenState();
}

class _TextAlignScreenState extends State<TextAlignScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Tutorial II"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "$_value",
              textScaleFactor: 3.0,
                textAlign: TextAlign.center
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _value += 1;
                });
              },
              child: Text("Click",
                style: TextStyle(color: Colors.deepPurple, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
