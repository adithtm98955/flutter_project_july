import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(home: Profile_ui(),));
}

class Profile_ui extends StatelessWidget {
  const Profile_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          CircleAvatar(
            radius: 85.0,
            backgroundImage: AssetImage("assets/image/Neymar.jpeg"),
          ),
          Row(
              children: [
             Icon(Icons.facebook_rounded,color: Colors.blueAccent,size: 30,),
             Icon(FontAwesomeIcons.squareTwitter,color: Colors.blueAccent,size: 27,),
                Icon(FontAwesomeIcons.linkedinIn,color: Colors.blueAccent,size: 30,),
                Icon(FontAwesomeIcons.github,size: 30,)

        ]
            ),
          Text("Jerin",
          style: 
          TextStyle(
            fontSize: 35,fontWeight: FontWeight.bold
          ),),
          Text("@webrror",style: TextStyle(color: Colors.black45),),
          Text("Mobile App Developer",style: TextStyle(color: Colors.black),),
          Container(height: 43,color: Colors.grey,
              margin: EdgeInsets.all(50),
            child: ListTile(title: Text("Privacy"),
            leading: Icon(Icons.privacy_tip_outlined),
            trailing: Icon(Icons.arrow_forward_ios_outlined),),
          )
          
    ]
      ),

    );
  }
}
