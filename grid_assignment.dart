import 'package:flutter/material.dart';
void  main()
{
  runApp(MaterialApp(home: Grid_Assignment(),));
}

class Grid_Assignment extends StatelessWidget {
  var image=['assets/image/IndiaGate.webp',
              'assets/image/Vancouver.jpg',
              'assets/image/Canada.jpeg'
              'assets/image/France.jpg',
               'assets/image/Usa.jpeg'];
  
  var name=[ 'INDIA',
             'VANCOUVER',
             'CANADA',
             'FRANCE', 
             'USA'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gridview'),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: 6,
    itemBuilder: (ctx,index){
    return Stack(
    children: [
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    image: DecorationImage(image: AssetImage(image[index]),
    fit: BoxFit.cover)
    ),
    ),
    ),
      Positioned(
          bottom: 20,
          right: 140,
          child: Container(
            child: Text(name[index],style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 40,
                shadows:[Shadow(
                    color: Colors.black26,
                    offset: Offset(3, 3),
                    blurRadius: 10
                )]  ),),
          ))
    ],
    );

    }
    ),
    );
  }

}
