import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: ImageLayoutScreen(),
  ));
}

class ImageLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Layout'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showToastMessage();
              },
              child: ContainerWithDecoration(),
            ),
          ],
        ),
      ),
    );
  }
  void showToastMessage() {
    Fluttertoast.showToast(
      msg: "#WeLoveUPM",
      fontSize: 15,
      backgroundColor: Colors.black54,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}

class ContainerWithDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 360,
      child: GestureDetector(
        onTap: () {
          // This onTap is used to capture the gesture for GestureDetector.
          // You can add additional logic here if needed.
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/upmstudents.jpg'),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
