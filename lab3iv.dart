import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Scaffold",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SKR4307: Mobile Apps",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            highlightColor: Colors.white,
            color: Colors.amber,
            tooltip: "Settings",
            onPressed: () {
              //do something
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            highlightColor: Colors.grey,
            color: Colors.white,
            tooltip: "Message",
            onPressed: () {
              //do something
            },
          )
        ],
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Text(
            "Flutter Container",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20.0,
            ),
          ),
          alignment: Alignment(0.0, 0.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10.0,
        icon: const Icon(Icons.add),
        label: Text('Add a Task'),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                "Notes",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              title: Text("Topic 1"),
            ),
            ListTile(
              title: Text("Topic 2"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (builder) {
                      return Container(
                        child: Text('Hello From Modal Bottom Sheet'),
                        padding: EdgeInsets.all(40.0),
                      );
                    });
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
