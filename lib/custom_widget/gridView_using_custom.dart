import 'package:flutter/material.dart';
import 'package:flutter_project_july/custom_widget/refactoring_widget.dart';

void main()
{
  runApp(MaterialApp(home: GridView_with_Refracting(),));
}

class GridView_with_Refracting extends StatelessWidget {
  const GridView_with_Refracting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2 , crossAxisSpacing: 15 , mainAxisSpacing: 15),
        children: [
          Custom_Card(
            image: const NetworkImage("https://images.unsplash.com/photo-1696813519917-1fb0a17177b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
            text: "My Product",
            click: (){},
            click1: (){},
          )
        ],
      ),
    );
  }
}
