
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MaterialApp(
  title: 'Toast Example',
  theme: ThemeData(
  primarySwatch: Colors.lightBlue
  ),
    home: Scaffold(
      appBar: AppBar(
       title: Text('Toast Notification Example'),
    ),
    body: Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: RaisedButton(
          child: Text('Click to Show'),
          onPressed: showToast,
),
),
),
),
));
}
void showToast(){
  Fluttertoast.showToast(
    msg: 'This is toast notification',
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey
);
}


