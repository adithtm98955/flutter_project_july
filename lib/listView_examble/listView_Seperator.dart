import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(MaterialApp(home: ListView_Seperated(),));
}

class ListView_Seperated extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("listView.Seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (ctx,i){
           return  Card(
              child:FaIcon(FontAwesomeIcons.whatsapp,
              color: Colors.teal,)

              //Image.asset("assets/image/Ronaldo.jpeg"),
            );
          },
          separatorBuilder: (context,index){

            if(index % 1 == 0){
               return
               Divider(

                 //color: Colors.primaries[index % Colors.primaries.length],
                 thickness: 2,);
            }
            else{
                  return SizedBox();
                 }
            } ,
          itemCount: 100
      ),
    );
  }
}
