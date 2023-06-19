
import 'dart:ui';

import 'package:flutter/material.dart';

class MentorPageHeader extends StatelessWidget {
  const MentorPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.25,
      width: width*.93,
        decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.38)),
        borderRadius: BorderRadius.circular(15),),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.35),
                        Colors.white.withOpacity(0.04),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:Column(
                  children: [
                    SizedBox(height: height*.04,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.asset("assets/MentorPage/header.png"),
                    ),
                  ],
                )
              )
            ],
          )

      ),
    );
  }
}
