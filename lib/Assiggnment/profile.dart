import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.deepPurple
          )
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text("Profile "),
            actions: [
              Icon(Icons.more_vert),],
          ),
          body: Column(
            children: <Widget>[
               CircleAvatar(
                radius: 80,
               backgroundImage:AssetImage("assets/image/DB7.jpg") ,
                             ),
              ListTile(
                title: Center(child: Text("David Beckham", style: TextStyle(fontSize: 20),),) ,
                subtitle: Center(child: Text("Model / super star", style: TextStyle(fontSize: 15,color: Colors.blue)),),
              ),

            ],
          )



      ),

    );
  }
}