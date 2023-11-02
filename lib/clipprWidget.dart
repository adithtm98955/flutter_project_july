import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main()
{
  runApp(MaterialApp(home: ClipWidgt(),));
}

class ClipWidgt extends StatelessWidget {
  const ClipWidgt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ClipRect(
              child: Container(
                child: Align(
                  widthFactor: .6,
                  heightFactor: .9,
                  alignment: Alignment.center,
                  child: Image.network("https://images.unsplash.com/photo-1695760010535-3168399f38cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                ),
              ),
            ),

            SizedBox(height: 20,),

            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Container(
               // width: 200,
               // height: 200,
                child: Align(

                   alignment: Alignment.center,
                  child: Image.network("https://plus.unsplash.com/premium_photo-1696834356525-7f1ea3a4cff1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
                ),
              ),
            ),

            SizedBox(height: 20,),

            ClipOval(
             // child: Image.network("https://images.unsplash.com/photo-1696853042590-21f05c997e6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
              child: Image.network("https://plus.unsplash.com/premium_photo-1669863278351-b14b35dab983?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80"),
            ),
            SizedBox(height: 20.0,),

            ClipPath(
              //clipper: OctagonalClipper(),
              clipper: StarClipper(9),
              child: Container(
                child: Image.network("https://images.unsplash.com/photo-1696853042590-21f05c997e6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
