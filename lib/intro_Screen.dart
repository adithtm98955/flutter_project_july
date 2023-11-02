import 'package:flutter/material.dart';
import 'package:flutter_project_july/statefull_Splash.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main()
{
  runApp(MaterialApp(home: IntroScreen(),));
}

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    PageDecoration decorationPage= const PageDecoration(

      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.pink ),

      bodyTextStyle: TextStyle(
        fontSize: 20, fontStyle: FontStyle.italic, color: Colors.purpleAccent ),

      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,Colors.deepOrange   ],
            begin: Alignment.bottomLeft,
          end: Alignment.topRight    ),),

        imageFlex: 1
    );



    return IntroductionScreen(
      pages: [

        PageViewModel(
          decoration: decorationPage,
          title: 'first page',
          body: "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image: IntroImage("https://images.unsplash.com/photo-1696332331308-8a064129a487?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
        ),

        PageViewModel(
            decoration: decorationPage,
            title: 'Second page',
            body: "Introduction/Onboarding package for flutter app with some customizations possibilities",
            image: IntroImage("https://images.unsplash.com/photo-1696838559410-33ef740126b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80")
        ),

        PageViewModel(
            decoration: decorationPage,
            title: 'Third page',
            body: "Introduction/Onboarding package for flutter app with some customizations possibilities",
            image: IntroImage("https://images.unsplash.com/photo-1696831387823-7cbc60cb5988?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1896&q=80")
        ),

      ],
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2()),),
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2()),),
      //showSkipButton: true,
      //skip: Text("Skip"),
      showBackButton: true,
      back: Text("Back"),
      next: Icon(Icons.arrow_forward_ios_rounded),
      done: Text("Done"),
      dotsDecorator: const DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
        size: Size(12 , 10),
        activeSize: Size(22, 10),

      ),
    );
  }

Widget  IntroImage(String imgpath) {

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imgpath)
          )
        ),
      ),
    );
}
}
