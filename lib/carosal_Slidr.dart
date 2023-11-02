import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_july/gridView/gridView1.dart';
import 'package:flutter_project_july/listView_examble/listview_constructor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()
{
  runApp(MaterialApp(home: Caro_Slider(),));
}

class Caro_Slider extends StatelessWidget {
  const Caro_Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: CarouselSlider(
          items:[

            Container(
              decoration: BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1691493646323-813e821f003e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80"))),
            ),

            GestureDetector(
              onLongPress: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GridView1()));
              },
              child: Container(
                decoration: BoxDecoration(
                    image:DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                                "https://images.unsplash.com/photo-1696344640819-bbfba9957ceb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"            )))),
            ),
            GestureDetector(
              onLongPress: (){
                showSheet(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                      image:DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1696344640819-bbfba9957ceb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"            )))),
            ),
            
            InkWell(
              onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListView1()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      image:DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                                 "https://images.unsplash.com/photo-1696253030104-cc8eae1e8f8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"            )))),
            ),
          ],

          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: .5,
            height: 300,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
            autoPlayAnimationDuration: const Duration(seconds: 2)
          )
      ) ,

    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Text("Share Via",style: TextStyle(fontSize: 17),),
          Divider( color: Colors.black26,),
          ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),title: Text("Whatsapp"),),
          ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pink,),title: Text("Instagram"),)
        ],
      );
    });
  }
}

