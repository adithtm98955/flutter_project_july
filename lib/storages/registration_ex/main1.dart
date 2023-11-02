import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/registration_ex/screen/login_signup.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login_SignUp(),
    );
  }
}