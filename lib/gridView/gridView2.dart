import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: GridView2(),));
}

class GridView2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
    return  Card(
    child: Center(child: Text("Hello",
    style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 22),
    )),
    color: Colors.primaries[index % Colors.primaries.length],
    );
    }
          ),

    );
  }
}
