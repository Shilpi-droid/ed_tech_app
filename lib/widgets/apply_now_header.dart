
import 'dart:ui';

import 'package:flutter/material.dart';

class ApplyNowHeader extends StatelessWidget {
  const ApplyNowHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: width*.9,
          height: height*.19,
          color: Colors.transparent,
          child: Stack(

            children: [

              Container(
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.white.withOpacity(0.48)),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.45),
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
                        top: height*.045,
                        left: width*.03,
                        child: Image(image:AssetImage("assets/header/header.png"))),
                  ],)
              ),
            ],
          ),
        ),
      );
  }
}
