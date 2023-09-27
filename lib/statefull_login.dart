import 'package:flutter/material.dart';
import 'package:flutter_project_july/loginPage.dart';
// void main()
// {
//   runApp(MaterialApp(home: Login_stateful(),));
// }

class Login_stateful extends StatefulWidget {
  @override
  State<Login_stateful> createState() => _Login_statefulState();
}
class _Login_statefulState extends State<Login_stateful> {
  bool passhidden=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username'
              ),
              ///here the value entered at text form field will stored at uname
              validator: (uname){
                if(uname!.isEmpty || !uname.contains('@') || !uname.contains('.com')){
                  return 'username must not be empty/ or invalid';
                }else{
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
                  border: OutlineInputBorder(),
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
          ElevatedButton(onPressed: () {
            // Navigator.of(context).push((MaterialPageRoute(
            //   builder: (context)=>LoginPage()
            // )));
          }, child: Text("Login")),

        ],
      ),
    );
  }
}