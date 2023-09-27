import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: List_Ui(),));
}

class List_Ui extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(backgroundColor: Colors.deepOrange,
  title: Text("Cities Around World",),
),
      body: Card(
        child: ListTile(
          leading: Image.asset("assets/image/IndiaGate.webp"),

        ),
      ),
    );
  }
}
