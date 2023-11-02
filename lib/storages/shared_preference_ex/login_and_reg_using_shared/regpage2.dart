import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/shared_preference_ex/login_and_reg_using_shared/loginpg1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginpg1.dart';

class RegistrationPage2 extends StatefulWidget {
  @override
  State<RegistrationPage2> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage2> {
  final name  = TextEditingController();
  final uname = TextEditingController();
  final pwd   = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "UserName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwd,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () => storedata(),
                child: const Text("Register Here"))
          ],
        ),
      ),
    );
  }
  void storedata() async {
    String personname = name.text;
    String username = uname.text;
    String password = pwd.text;

    preferences = await SharedPreferences.getInstance()!;
    preferences.setString('name', personname);
    preferences.setString('uname', username);
    preferences.setString('pass', password);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2()));
  }
}