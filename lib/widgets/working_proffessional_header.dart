
import 'dart:ui';

import 'package:flutter/material.dart';

class WorkingProffessionalHeader extends StatelessWidget {
  const WorkingProffessionalHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          border:Border.all(color: Colors.white,width:.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: width*.78,
          height: height*.12,

          child: Stack(

            children: [

              Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.02),
                        ]
                    )
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 3,
                    sigmaX: 3,
                  ),
                  child:
                  Stack(children: [
                    Positioned(
                        top: height*.023,
                        left: width*.08,
                        child: Image(image:AssetImage("assets/header/header2.png"))),
                  ],)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
