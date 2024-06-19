//LAB 3
//lab3b
// 211276
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Flutter Scaffold',
    home: myApp(),
  ));
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SKR4307: MOBILE APPS',
        style: TextStyle(fontWeight: FontWeight.bold),),
        //fontStyle: FontStyle.italic
      ),
      backgroundColor: Colors.green,
      actions: <Widget>[
            IconButton(
            icon: Icon(Icons.settings),
            highlightColor: Colors.white,
            color: Colors.amber,
            tooltip: "Settings",
            onPressed: (){
      //do something
    }

        ),
          IconButton(
            icon: Icon(Icons.message),
                  highlightColor: Colors.grey,
                  color: Colors.white,
                  tooltip: "Message",
                  onPressed: (){
                            //do something
                             },
  )
  ],


      body: Center(
      child: Text('Flutter Scaffold Body Content',
        style: TextStyle(color: Colors.black87, fontSize: 20.0),),
      ),

      );
  }
}