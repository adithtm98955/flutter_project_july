import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: GridView3(),));
}
class GridView3 extends StatelessWidget {
  var imag=[
    "assets/image/f7a9cda76002173419491f6852cfc673.jpg",
    "assets/image/Google-Paylast.png",
    "assets/image/Messi.jpeg",
    "assets/image/Neymar.jpeg",
    "assets/image/Ronaldo.jpeg",
    "assets/image/f7a9cda76002173419491f6852cfc673.jpg",
    "assets/image/Google-Paylast.png",
    "assets/image/Messi.jpeg",
    "assets/image/Neymar.jpeg",
    "assets/image/f7a9cda76002173419491f6852cfc673.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(10, (index) =>
          Padding(padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),
              color: Colors.primaries[index % Colors.primaries.length]),
        child: Column(
            children: [
              Image.asset(imag[index],height: 250,),
             const  Text("Food1",
              style: TextStyle(fontSize: 23),)
            ],

        ),
      ),
          )
      ),
      ),
    );
  }
}
