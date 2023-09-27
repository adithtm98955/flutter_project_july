import 'package:flutter/material.dart';
import 'package:flutter_project_july/Assiggnment/reg_assignment.dart';
import 'package:flutter_project_july/loginPage.dart';

class Login_stateful_Assignment extends StatefulWidget {
  @override
  State<Login_stateful_Assignment> createState() => _Login_statefulState();
}
class _Login_statefulState extends State<Login_stateful_Assignment> {
  final formkey = GlobalKey<FormState>();
  bool passhidden=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Login",style: TextStyle(
                fontSize: 36,fontWeight: FontWeight.bold
              ),),
              Text("Welcome back! Login with your Credentails ",
                style: TextStyle(
                color: Colors.grey
              ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration:  InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Email ID'
                  ),
                  validator: (uname) {
                    if (uname!.isEmpty ||
                        !uname.contains('@') ||
                        !uname.contains('.com')) {
                      return 'username must not be empty/ or invalid';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passhidden,
                  validator: (password){
                    if(password!.isEmpty || password.length < 6){
                      return 'Password must not be empty/ password length must be > 6';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {

                              if(passhidden==true)
                              {
                                passhidden=false;
                              }
                              else
                              {
                                passhidden=true;
                              }
                            });


                          }, icon:Icon(passhidden==true?
                      Icons.visibility_off_sharp:Icons.visibility) )),
                ),
              ),
              SizedBox(width: 500,height: 36,
                child: ElevatedButton(onPressed: () {

                }, child: Text("Login"),
                style: ElevatedButton.styleFrom(primary: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

                ),
              ),
            TextButton(onPressed: (){
      Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=>Signup_stateful_Assignment()));
      },
                child:Text("Do you have an Account? Sign Up",
                style: TextStyle(
                  color: Colors.grey
                ),)

        )

            ],
          ),
        ),
      ),
    );
  }
}