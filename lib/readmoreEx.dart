import 'dart:async';

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main(){
  runApp( MaterialApp(home: ReadMore_Ex(),));
}

class ReadMore_Ex extends StatelessWidget {
  const ReadMore_Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body:  Column(
        children: [
        ReadMoreText(
        '                                                    Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
        trimLines: 2,
        colorClickableText: Colors.pink,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
        ],

      ),
    );
  }
}
