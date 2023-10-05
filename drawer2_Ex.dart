import 'package:flutter/material.dart';
import 'package:flutter_project_july/drawer_mainpage.dart';
import 'package:flutter_project_july/listView_examble/listview2.dart';
void main()
{
  runApp(MaterialApp(home: Drawer2Ex(),));
}

class Drawer2Ex extends StatelessWidget {
  const Drawer2Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
              colors: [
                Colors.pink,
                Colors.white,
                Colors.blue,

              ]
            )
          ),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(accountName: Text("Neymar"),
                    accountEmail: Text("naymar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/Neymar.jpeg"),
                ),),

                ListTile(
                  leading: Icon(Icons.dashboard_outlined),
                  title: Text("Dashboard"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Drawer_main()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text("Favorate"),
                ),
                ListTile(
                  leading: Icon(Icons.leak_add_sharp),
                  title: Text("Leads"),
                ),
                ListTile(
                  leading: Icon(Icons.supervisor_account_outlined),
                  title: Text("Clients"),
                ),
                ListTile(
                  leading: Icon(Icons.rocket_launch),
                  title: Text("Projects"),
                ),
                ListTile(
                  leading: Icon(Icons.man),
                  title: Text("Patients"),
                ),
                ListTile(
                  leading: Icon(Icons.menu_sharp),
                  title: Text("Subscription"),
                ),ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payment"),
                ),ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("User"),
                ),
                ElevatedButton(

                    onPressed: (){}, child: Text("Logout")
                )
              ],
            ),
          ),
      ),
      

    );
  }
}
