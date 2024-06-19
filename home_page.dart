import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'listtitle_1.dart';
import 'listtitle_2.dart';
import 'listtitle_3.dart';


void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat.yMMMMd().add_jm().format(now);
    String dayOfWeek = DateFormat.E().format(now);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      drawer:DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ContainerWidget(),
            SizedBox(height: 20),
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
            'https://www.pngitem.com/pimgs/m/25-256506_azzurri-lp-icons-mobility-flexible-working-transparent-mobile.png',
          ),
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
            accountName: Text('Kerena'),
            accountEmail: Text('211276@student.upu.edu.my'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/women_3.png'),
            ),
          ),
          ListTile(
            title: Text('Show Alert'),
            leading: Icon(Icons.notification_add),
            iconColor: Colors.red,


            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Image Layout'),
            leading: Icon(Icons.image),
            iconColor: Colors.blue,

            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageLayoutScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Arithmetic'),
            leading: Icon(Icons.architecture),
            iconColor: Colors.green,

            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArithmeticOperationsScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Close'),
            leading: Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
