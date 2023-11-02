import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main()
{
  runApp(MaterialApp(home: LottieEx(),));
}

class LottieEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Lottie.asset("assets/animation/animation1.json"),
       // Lottie.network("https://lottie.host/669ffff9-0f43-44a2-ac9f-2a278eb7b6c8/hMrT0rJkdh.json")
      ),
    );
  }
}
