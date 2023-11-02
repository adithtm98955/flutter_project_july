import 'package:flutter/material.dart';
import 'package:flutter_project_july/passing_data_between_screens/using%20_navigator/dummyData.dart';
import 'detailsPage.dart';

void main()
{
  runApp(MaterialApp(
    home: ProductMain(),
    routes: {
      'details':(context)=>ProductDetails(),
    },
  ));
}

class ProductMain extends StatelessWidget {
  const ProductMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),

        ///  products ena List le oro map mm one by one ayi product il varum

        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: products.map((product) =>InkWell(
          onTap: (){
            Navigator.pushNamed(context,'details', arguments: product['id']);
          },
          child: Card(
            child: Column(
              children:[
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage(product['image']))
                  ),
                  ),
                Text(product['name']),
                Text('${product['price']}'),
              ],
            ),
          ),
        )
        ).toList(),
    )
    );
  }
}
