import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/shared_preference_ex/login_and_reg_using_shared/regpage2.dart';
import 'package:flutter_project_july/storages/shared_preference_ex/simple_login/home_shared.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Login2(),
  ));
}

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final uname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async{
    preferences = await SharedPreferences.getInstance();
    newuser = preferences.getBool('newuser') ?? true;
    if(newuser == false){
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=>Home_Shared()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "UserName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "password"),
              ),
            ),
            ElevatedButton(
                onPressed: () => validateandLogin(), child: Text("Login")),

            SizedBox(height: 20,),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegistrationPage2()));
                },
                child: Text("Go to RegistrationPage  "))
          ],
        ),
      ),
    );
  }

  void validateandLogin() async {
    preferences = await SharedPreferences.getInstance()!;
    String storedusername = preferences.getString('uname')!;
    String storedpassword = preferences.getString('pass')!;

    // values that we entered at text field
    String usename = uname.text;
    String pwd    = pass.text;
    preferences.setBool('newuser', false);


    }
  }
