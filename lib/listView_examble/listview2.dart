import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: ListView2(),));
}

class ListView2 extends StatelessWidget {
  var titl=['Amal','Pranav','Hemanth','Neeraj','Adith','Sayooj','Arju','SRC','Kannappi','Vallu'];
  var subti=[10,20,30,40,50,60,70,80,90,100];
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
      appBar: AppBar(
        title: Text("ListView 2"),
      ),
      body: ListView(
        children: 
          List.generate(10, (index) => Card(
            child: ListTile(
              title: Text('${titl[index]}'),
              subtitle: Text('${subti[index]}'),
                leading: Image.asset(imag[index]),


          ),

      ),
    )
    )
    );
  }
}
