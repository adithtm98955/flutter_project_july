import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: GridView1(),));
}

class GridView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView1"),
      ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),  ///fixed grid
       // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),  /// grid view change if the screen will change
        children: List.generate(5, (index) =>
        Card(
          color: Colors.primaries[index % Colors.primaries.length],
          child: Icon(Icons.ac_unit_outlined),
        )
        ),
      ),
    );
  }
}
