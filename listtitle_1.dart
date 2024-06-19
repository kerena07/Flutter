import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyScreen(),
  ));
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
       backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show AlertDialog when the button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return MyAlertDialog();
              },
            );
          },
          child: Text('AlertDialog'),



        ),
      ),
    );
  }
}

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        color: Colors.white,
        child: Row(
          children: [
            Image.asset('assets/images/alert.png',
              width: 40,
              height: 40,

            ),

            SizedBox(width: 10),
            Text(
              'Alert Dialog Box',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      content: Text("SKR4307 Lab Test - Semester I 2022/23"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the AlertDialog
          },
          child: Text('OK'),


        ),
      ],
    );
  }
}
