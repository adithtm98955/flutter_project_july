import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()    //to run an app
{
  runApp(MaterialApp     //default theme of our flutter app
    (home:SplashPage()   // initial page to be launched while running app
  ) );
}
class SplashPage extends StatelessWidget{
  @override
  //to creat our widget tree we use build function
  Widget build(BuildContext context) {
    // Buildcontext - used to locate widgets on the widget tree and monitor their actions
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            decoration: BoxDecoration(
              // color: Colors.black12
              // image: DecorationImage(
              // fit:BoxFit.cover,
              // image:NetworkImage("https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60") )
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.yellow,
                      Colors.indigo,
                      //  Colors.yellow
                    ])
            ),
            child :Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///  adding built-in icons
                  // Icon(
                  //     Icons.favorite,
                  //     color: Colors.red,
                  //     size: 80,),
                  ///  adding external icons(flutter accessed it as image)
                  ///  AssetImage as an image provider
                  Image(
                    image: AssetImage("assets/icon/icon1.png"),
                    width: 150,
                    height: 150,),
                  ///   NetworkImage as image provider
                  // Image(
                  //          image: NetworkImage("https://icons.iconarchive.com/icons/aniket-suvarna/box-logo/256/bxl-apple-icon.png"),
                  //          width: 150,
                  //          height: 150, ),
                  Text("My Application",
                    style: GoogleFonts.macondo(
                        fontSize: 30,
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold
                    ),

                    // style: TextStyle(color: Colors.lightBlueAccent,
                    //                  fontSize: 20,
                    //                  fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
        )
    );
  }

}
