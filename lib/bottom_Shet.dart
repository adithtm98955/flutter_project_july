import 'package:flutter/material.dart';
import 'package:flutter_project_july/carosal_Slidr.dart';
void main()
{
  runApp(MaterialApp(home: Bootom_sht(),));
}

class Bootom_sht extends StatelessWidget {

int SelecedOption=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            showSheet(context);
          },
          child: Image(
            image: NetworkImage("https://images.unsplash.com/photo-1691156324497-099d74964d78?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
          ),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {

    showModalBottomSheet(context: context, builder: (context)
    {
      return Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(15))
           ),
        child: Column(
          children: [
            ListTile(title: Text("Sort by",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20
            ),),),

            ListTile(title: Text("Title"),
              leading:Radio(
                activeColor: Colors.grey,
              value: 2,
              groupValue: SelecedOption,
              onChanged: (value) {
                setState(() {
                  SelecedOption = value!;
                });
              },
            ),
            ),

            ListTile(title: Text("Date created"),
              leading:Radio(
                activeColor: Colors.grey,
                value: 2,
                groupValue: SelecedOption,
                onChanged: (value) {
                  setState(() {
                    SelecedOption = value!;
                  });
                },
              ),
            ),

            ListTile(title: Text("Date modified"),
              leading:Radio(
                activeColor: Colors.deepOrange,
                value: 1,
                groupValue: SelecedOption,
                onChanged: (value) {
                  setState(() {
                    SelecedOption = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text("Order  ..............................",
                style:TextStyle(color: Colors.grey) ,),
            ),
            ListTile(title: Text("Ascending"),
              leading:Radio(
                value: 2,
                groupValue: SelecedOption,
                onChanged: (value) {
                  setState(() {
                    SelecedOption = value!;
                  });
                },
              ),
            ),
            ListTile(title: Text("Descending"),
              leading:Radio(
                activeColor: Colors.deepOrange,
                value: 1,
                groupValue: SelecedOption,
                onChanged: (value) {
                  setState(() {
                    SelecedOption = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("....................",
              style: TextStyle(
                color: Colors.grey
              ),),
            ),
            
            Row(
              children: [
                Text("Pin favourites to top"),
                Icon(Icons.radio_button_off)
              ],
            )

          ],
        ),
      );

    });
  }

  void setState(Null Function() param0) {}
}
