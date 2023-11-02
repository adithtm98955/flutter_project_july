import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_july/gridView/gridView1.dart';
import 'package:flutter_project_july/listView_examble/fi_card_using_Stack.dart';
import 'package:flutter_project_july/listView_examble/listView_4.dart';

import 'Assiggnment/contact_ui.dart';
void main()
{
  runApp(MaterialApp(home: BottomBarEx(),));
}

class BottomBarEx extends StatefulWidget {

  @override
  State<BottomBarEx> createState() => _BottomBarExState();
}

class _BottomBarExState extends State<BottomBarEx> {
  int index = 0;
  var screens= [
    FiCard(),
    GridView1(),
    ListView4(),
    Contact()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 1,
        onTap: (tapedindex){
          setState(() {
            index= tapedindex;
          });
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   //type: BottomNavigationBarType.fixed,
      //     elevation: 5,
      //     backgroundColor: Colors.green,
      //     selectedItemColor: Colors.yellow,
      //     currentIndex: index,
      //     onTap: (tapedindex){
      //     setState(() {
      //       index=tapedindex;     /// here we will index value will change
      //     });
      //     },
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label:"Home" ,
      //       backgroundColor:Colors.brown ),
      //       BottomNavigationBarItem(
      //           backgroundColor: Colors.green,
      //           icon: Icon(Icons.search),
      //           label: "Search"),
      //       BottomNavigationBarItem(
      //           backgroundColor: Colors.pink,
      //           icon: Icon(Icons.add_box_rounded),
      //           label: "Reels"),
      //       BottomNavigationBarItem(
      //           backgroundColor: Colors.blue,
      //           icon: Icon(Icons.account_box),
      //           label: "Profile"),
      //
      //     ]
      // ),
      body: screens[index],
    );
  }
}
