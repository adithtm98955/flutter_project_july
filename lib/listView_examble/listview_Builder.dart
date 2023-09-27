import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: ListView_Builder(),));
}

class ListView_Builder extends StatelessWidget {
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
    appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView(
        children:[
          const ListTile(
            title: Text("Creat call link"),
            subtitle: Text("Share a link for your WhatsApp call"),
            leading: CircleAvatar(backgroundColor: Colors.green,
              child: Icon(Icons.link,),
            )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Recent",
            ),
          ),
          ListView.builder(itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index)
        {
          return ListTile(

            title: Text("Hi"),
            subtitle: Row(
              children: [
                Icon(Icons.call_missed_rounded,color: Colors.red),
                Text("25 Sep 2023"),
                Text("10:12")
              ],
            ),
            leading: CircleAvatar(child: Image.asset(imag[index])),
            trailing: Icon(Icons.call,color: Colors.green,),
          );
        }),
    ]
    ),

    );

  }
}
