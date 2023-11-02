import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp
    (home:GooglePay()
  ) );
}
class GooglePay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Colors.black,
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image:AssetImage("assets/image/Google-Paylast.png"),
                 width: 150,
                 height:150,),

                  SizedBox(
                    height: 200,
                  ),
                  Text("Google",
                  style:GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 36,fontWeight: FontWeight.bold),),


              ],
          ),
          ),
          ),
        ),
    );
  }
}