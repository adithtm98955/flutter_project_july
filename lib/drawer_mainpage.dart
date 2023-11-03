import 'package:flutter/material.dart';
void main()
{
runApp(MaterialApp(home: Drawer_main(),));
}

class Drawer_main extends StatelessWidget {
  const Drawer_main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Dashboard"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10.0),
          child:Container(
            width: double.infinity,
            height: 200,
            decoration:const BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.cover,
                  image:AssetImage("assets/image/Neymar.jpeg"))
            ),

            ),
          ),
         const Padding(padding: EdgeInsets.only(bottom: 10,left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Neymar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
            ),

          ),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                  child: Text("""Neymar came into prominence at Santos, where he made his professional debut aged 17. Soon becoming the Brazilian's league star player, he won the 2011 Copa Libertadores with Santos, being their first since 1963. He was named the South American Footballer of the Year in 2011 and 2012, and relocated to Europe to join Barcelona in 2013. In his second season, as part of Barcelona's attacking trio with Lionel Messi and Luis Suárez, dubbed MSN, he won the continental treble of La Liga, the Copa del Rey, and the UEFA Champions League. Motivated to be the focal player at club level, Neymar unexpectedly transferred to Paris Saint-Germain (PSG) in 2017[7] for €222 million, which made him the most expensive player ever.[note 1] Despite recurring injuries and consequential limited game time in Paris, he was voted Ligue 1 Player of the Year in his debut season, helped PSG attain an historic domestic quadruple and reach its first ever Champions League final in the 2019–20 season, and established himself as the highest scoring Brazilian player in Champions League history."""))),


    ]
      ),


    );
  }
}
