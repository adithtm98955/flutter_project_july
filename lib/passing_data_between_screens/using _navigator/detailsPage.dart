import 'package:flutter/material.dart';
import 'package:flutter_project_july/passing_data_between_screens/using%20_navigator/dummyData.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // id from previous page
    var id = ModalRoute.of(context)?.settings.arguments;
    var product=products.firstWhere((product) => product['id']==id );

    return Scaffold(
       appBar: AppBar(
         title: Text("Product Details"),
       ),
      body: Center(
        child: Column(
          children: [
            Image.network(product['image'],height: 200,width: 150,),
            Text(product['name'],style:GoogleFonts.fahkwang(fontSize: 30),),
            Text('${product['price']}',style: TextStyle(fontSize: 16),),
            Text('${product['rating']}',style: TextStyle(fontSize: 16),),
            Text(product['description'],style: TextStyle(fontSize: 16),),
          ],
        ),
      ),

    );
  }
}
