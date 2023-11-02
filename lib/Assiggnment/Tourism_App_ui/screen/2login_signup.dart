import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()
{
  runApp(MaterialApp(home: Login_SignUp(),));
}
class Login_SignUp extends StatelessWidget {
  const Login_SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network("assets/image/tourism_main_icon.png",width: 200,height: 200,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(
                onPressed: (){},
              color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child:const ListTile(
                    title: Text("Login Here"),
                    trailing: Icon(Icons.people_alt_outlined),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(
                  onPressed: (){},
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                      title: Text("Register Here"),
                      trailing:Icon(Icons.person_add_outlined) ,
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: MaterialButton(
                onPressed: (){},
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: const ListTile(
                    title: Text("Register with Facebook"),
                    trailing: Icon(Icons.facebook),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: MaterialButton(
                onPressed: (){},
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: const ListTile(
                    title:  Text("Register with Google"),
                      trailing:FaIcon(FontAwesomeIcons.google)
                    ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
