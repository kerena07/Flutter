import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
          appBar: AppBar(
              title: Text('First Screen'),
          ),
          body: Center(
    child: RaisedButton(
    child: Text('Launch screen'),
    onPressed: (){
      // Navigate to the second screen
      // when tapped
      Navigator.pushNamed(context, '/second');
              },
       ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("Second Screen"),
        ),
    body: Center(
        child: RaisedButton(
    onPressed: (){
      // Navigate back to the first screen
      // when tapped
      Navigator.pop(context);
  },
            child: Text('Go back!'),
        ),
    ),
    );
  }
}
runApp(MaterialApp(
  title: 'Named Routes Demo',
//Start the app with the "/" named route (FirstScreen widget)
  initialRoute = '/',
  routes = {
    // When navigating to the "/" route, build the FirstScreen widget
    '/': (context) => FirstScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget
    '/second': (context) => SecondScreen(),
},
));




