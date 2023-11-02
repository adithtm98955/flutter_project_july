import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/registration_ex/screen/login.dart';
import 'package:flutter_project_july/storages/registration_ex/screen/sign_up.dart';

class Login_SignUp extends StatefulWidget {
  const Login_SignUp({Key? key}) : super(key: key);

  @override
  State<Login_SignUp> createState() => _Login_SignUpState();
}

class _Login_SignUpState extends State<Login_SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text("Hello There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",
                textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
            ),

            Image.asset("assets/image/login.png",height: 100,width: 100,),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_form()));
                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),

                        )
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp_form()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}