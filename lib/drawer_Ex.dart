import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: DrawerEx(),));
}

class DrawerEx extends StatelessWidget {
  const DrawerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image/Vancouver.jpg"))
              ),
                accountName:Text("Amal") ,
                accountEmail:Text("Amal123@gmail.com"),
            currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/image/Ronaldo.jpeg"),            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/image/Neymar.jpeg"),
              )
            ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorate"),
            ),
            ListTile(
              leading: Icon(Icons.work_history_rounded),
              title: Text("Work Flow"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            )
          ],
        ),
      ),

    );
  }
}
