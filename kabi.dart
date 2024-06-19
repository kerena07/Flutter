import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              <Widget> [
                Text('CNS3400', style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),),
                Text('Lab Test - Semester 1 2023/2024',style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),
                Text('12/20/2022 11:53 PM',style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),
                Text('Tuesday',style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),
                Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('https://www.pngitem.com/pimgs/m/25-256506_azzurri-lp-icons-mobility-flexible-working-transparent-mobile.png')
                        )
                    )
                )
              ],
            ),
          ),
          drawer: Drawer(
              child: Column(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text('Kabilan'),
                      accountEmail: Text('209983@student.upm.edu.my'),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent
                      ),
                      currentAccountPicture: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/man_1.png')
                      ),),
                    ListTile(
                      title: Text('Show Alert'),
                      leading: Icon(Icons.notification_add),
                      iconColor: Colors.red,
                    ),
                    ListTile(
                      title: Text('Image Layout'),
                      leading: Icon(Icons.image),
                      iconColor: Colors.blue,
                    ),
                    ListTile(
                      title: Text('Arthmetic'),
                      leading: Icon(Icons.architecture),
                      iconColor: Colors.green,
                    ),
                    Divider(height: 1.5,),
                    ListTile(
                      title: Text('Close'),
                      leading: Icon(Icons.close),
                    )
                  ]
              )
          )
      ),
    );
  }
}