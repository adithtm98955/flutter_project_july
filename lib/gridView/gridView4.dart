import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(const MaterialApp(home: GridView4(),));
}

class GridView4 extends StatelessWidget {
  const GridView4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 200,
        children: List.generate(10,
                (index) =>Card(
                  child: Row(
                    children: [
                     const  FaIcon(FontAwesomeIcons.children,size: 30,),
                     const SizedBox(width: 10,),
                      Expanded(
                        child: Text('Children',
                          style: TextStyle(fontSize: 20,
                          color: Colors.black
                          //Colors.primaries[index % Colors.primaries.length]
                        ),),
                      )
                    ],
                  ),
                ) 
        ),


      ),
    );
  }
}
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