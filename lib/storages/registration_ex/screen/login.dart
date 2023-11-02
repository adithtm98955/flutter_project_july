import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/registration_ex/reg_sql_function.dart';
import 'package:flutter_project_july/storages/registration_ex/screen/home.dart';
import 'package:flutter_project_july/storages/registration_ex/screen/login_signup.dart';
import 'package:flutter_project_july/storages/registration_ex/screen/sign_up.dart';
import 'admin.dart';


class Login_form extends StatefulWidget {

  @override
  State<Login_form> createState() => _Login_formState();
  }

  class _Login_formState extends State<Login_form> {

  var formkey = GlobalKey<FormState>();
  final TextEditingController conemail = TextEditingController();
  final TextEditingController conpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool hidepass = true;
    return Scaffold(
    appBar: AppBar(
            title: const Text("LOGIN PAGE"),),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text("Login Page",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: conemail,
                decoration: InputDecoration(
                prefixIcon: const Icon(Icons.drive_file_rename_outline),
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),)),
                validator: (text) {
                  if (text!.isEmpty || !text.contains('@') || !text.contains(".")) {
                    return "Enter valid Email!!!";
                  }
                  },
                textInputAction: TextInputAction.next,
              ),
            ),

            Padding(
            padding: const EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: hidepass,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon( hidepass? Icons.visibility : Icons.visibility_off),),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Colors.pink,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>AdminHome()));
                },
                child: const Text("LOGIN"),
              ),
            ),

            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_form()));
                  },
                child: const Text('Not a User? Register Here!!!'))
          ],
        ),
      ),
    );
  }
  }