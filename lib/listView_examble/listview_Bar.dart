import 'package:flutter/material.dart';
import 'package:flutter_project_july/listView_examble/listView_Seperator.dart';
import 'package:flutter_project_july/listView_examble/listview2.dart';
import 'package:flutter_project_july/listView_examble/listview_Builder.dart';
import 'package:flutter_project_july/listView_examble/listview_constructor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: ListView_Bar(),));
}

class ListView_Bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          actions:  [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20,),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("Settings"))
              ];
            }),
          ],
          bottom: PreferredSize(preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child:  Container(
                child: TabBar(
                    tabs: [
                      Tab(icon: FaIcon(FontAwesomeIcons.users),),
                      Tab(text: "Chats",),
                      Tab(text: 'Status',),
                      Tab(text: 'Calls',)
                    ]
                ),
              )
          ),
        ),

        body: TabBarView(
          children: [
            ListView_Seperated(),
            ListView1(),
            ListView2(),
            ListView_Builder(),

          ],
        ),
      ),
    );
  }
}
