import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: GridView5(),));
}

class GridView5 extends StatelessWidget {
  const GridView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding:const  EdgeInsets.all(8.0),
       child: GridView.custom(
           gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 10,
             crossAxisSpacing: 10
           ),
          /// childrenDelegate:SliverChildListDelegate([]),  OR
           childrenDelegate: SliverChildBuilderDelegate((context, index)=>
             Stack(
               children: [

                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image:const DecorationImage(
                       fit: BoxFit.cover,
                       image: AssetImage("assets/image/Vancouver.jpg")
                     )
                     )
                   ),

              const   Positioned(
                     bottom: 20,
                     right: 30,
                     child: Text("40\$",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                     ),)),
                const Positioned(
                     right: 20,
                     top: 30,
                     child: Icon(Icons.favorite,
                     color: Colors.white,
                     size: 20,))
               ],
             )

           )),
     ),
     
     );
  }
}
