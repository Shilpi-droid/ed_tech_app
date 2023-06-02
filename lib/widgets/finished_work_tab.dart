
import 'package:flutter/material.dart';

import 'glass_icon.dart';


class FinishedWork extends StatelessWidget {
  const FinishedWork({Key? key,required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(

      children:[
        Container(
        width: width*.9,
        height: height*.12,
        color: Colors.transparent,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text("Finished Work",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                ),),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
              ),
            ),
           // SizedBox(height: 20,),
            Divider( // Horizontal Divider
              color: Colors.white,
              thickness: 3.0,
              indent: 0.0,
              endIndent: 0.0,
            ),
          ],
        ),
      ),
      Positioned(
          right: 0,
          top: 10,
          child: GlassIcon(
            icon: Icons.arrow_forward_ios,
            size: 35,iconSize: 20,
            iconColor: Colors.white,)
      )
      ]
    );
  }
}
