import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: ListView1(),
  theme: ThemeData(primarySwatch: Colors.teal),));

}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 1"),
      ),
      body: ListView(
        children: [
          Card(child: ListTile(
                                title: Text("profile 1"),
                                leading: Icon(Icons.people_alt_rounded),
                                subtitle: Text("This is a sample subtitle"),
                                trailing: Text("10.11"),
          )
          ),


          Card(child: ListTile(
                                title: Text("CR7:cristiano Ronaldo"),
                                leading: CircleAvatar(
                                    backgroundImage: AssetImage("assets/image/Ronaldo.jpeg")),
                                    trailing: Column(
                                        children:[
                                          Text("7.17"),
                                          CircleAvatar(
                                            minRadius: 6,
                                            maxRadius: 8,
                                            backgroundColor: Colors.green,
                                            child:Text("3"),
                                          )
                                        ]
                                    ),
                                    subtitle: Text("All time top Scorer"),
          )
          ),


          Card(child: ListTile(title: Text("LM10:Messi"),
                               leading: CircleAvatar(
                                 backgroundImage: AssetImage("assets/image/Messi.jpeg"),),
                                 trailing: Column(children:[
                                   Icon(Icons.arrow_forward_ios_outlined)
                                   // Text("10.30"),

                                 ]
                                 ),
                                  subtitle: Text("All time top Assisster"),
          )),


          Card(child: ListTile(title: Text("NJR:Neymar"),
                               leading: CircleAvatar(
                                 backgroundImage: AssetImage("assets/image/Neymar.jpeg"),),
                                 trailing: Text("11.10"),
                                 subtitle: Text("Brazilian Sultan"),
          )),


        ],

      ),
    );

  }
}
