import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final data;
  const Home({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var name  = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $name"),
      ),
      body: Center(

        child: Text('Success.....'),
      ),
    );
  }
}
