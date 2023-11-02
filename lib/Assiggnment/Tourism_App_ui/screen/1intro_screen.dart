import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project_july/Assiggnment/Tourism_App_ui/screen/2login_signup.dart';

void main()
{
  runApp(MaterialApp(
    home: Intro_Screen(),
    routes: {
      //'login':(context)=>
    },
  ));
}

class Intro_Screen extends StatefulWidget {

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Login_SignUp()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/image/tourism_main_icon.png",height: 250,width: 250,),
      ),

    );
  }
}
