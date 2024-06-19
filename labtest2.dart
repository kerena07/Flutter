import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat.yMMMMd().add_jm().format(now);
    String dayOfWeek = DateFormat.E().format(now);

    return Container(
      child: Column(
        children: [
          Text(
            'CNS3400',
            style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
          ),
          Text(
            'Lab Test – Semester I 2023/2024',
            style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
          ),
          Text(
            'Date and Time: $formattedDate',
            style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
          ),
          Text(
            'Day: $dayOfWeek',
            style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
          ),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.pngitem.com/pimgs/m/25-256506_azzurri-lp-icons-mobility-flexible-working-transparent-mobile.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeScreen(),
            SizedBox(height: 20), // Add some spacing between the widgets
            ContainerWidget(),
          ],
        ),
      ),
    );
  }
}


class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            accountName: Text('Your Name'),
            accountEmail: Text('Your Email Address'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/studentsupm.jpg'),
            ),
          ),
          ListTile(
            title: Text('Drawer Item 1'),
            onTap: () {
              // Handle Drawer Item 1 tap
            },
          ),
          ListTile(
            title: Text('Drawer Item 2'),
            onTap: () {
              // Handle Drawer Item 2 tap
            },
          ),
          // Add more ListTile widgets as needed
        ],
      ),
    );
  }
}
