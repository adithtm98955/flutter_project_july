import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: StackEx(),));
}

class StackEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Ex"),),

      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Positioned(
              top: 100,
              left: 100,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),

    );
  }
}
