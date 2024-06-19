import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Navigation Basics',
      home: FirstRoute(),
  ));
}
// First route class extends StatelessWidget
class FirstRoute extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
  // TODO: implement build
     return Scaffold(
     appBar: AppBar(
         title: Text('First Route'),
     ),
         body: Center(
             child:RaisedButton(
                 child: Text("To route 2"),
                 onPressed: (){
                   Navigator.push(
                       context, MaterialPageRoute(builder: (context) => SecondRoute()),
                   );
                   },
             ),
         ),
     );
 }
}

// Second route class extends StatelessWidget
class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
          appBar: AppBar(
          title: Text('Second Route'),
          ),
              body: Center(
                  child: RaisedButton(
              onPressed: (){
                Navigator.pop(context);
                },
                      child: Text('Go back!'),
                  ),
              ),
      );
  }
}
