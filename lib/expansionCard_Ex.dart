import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: ExpansionTile_Ex(),));
}

class ExpansionTile_Ex extends StatelessWidget {
  const ExpansionTile_Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Card"),
      ),
      body:const Column(
        children: [
          ExpansionTile(
              title: Text("Colors"),
          subtitle: Text("Expand to view more"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purpleAccent,),
                title: Text("Purple"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.pink,),
                title: Text("Pink"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("Blue"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Nature"),
            subtitle: Text("Expand to view more"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1696853042590-21f05c997e6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),),
                title: Text(""),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage:NetworkImage("https://plus.unsplash.com/premium_photo-1669863278351-b14b35dab983?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80") ,),
                title: Text(""),
              ),
              // ListTile(
              //   leading: CircleAvatar(backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1669863278351-b14b35dab983?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80"),),
              //   title: Text(""),
              // )
            ],
          )
        ],
      ),
    );
  }
}
