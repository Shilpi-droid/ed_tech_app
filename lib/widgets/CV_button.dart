
import 'dart:ui';

import 'package:flutter/material.dart';

class CVButton extends StatelessWidget {
  CVButton({Key? key,required this.imgUrl,required this.title,required this.subtitle}) : super(key: key);
  String imgUrl;
  String title;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.08,
      width: width*.45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white60),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.35),
                        Colors.white.withOpacity(0.02),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
              ),
              Positioned(
                  left: width*.02,
                  top: height*.02,
                  width: width*.12,
                  height: height*.05,
                  child: Image.asset(imgUrl,scale: 2,)
              ),
              Positioned(
                  left: width*.12,
                  top: height*.0,
                  width: width*.27,
                  height: height*.08,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                        ),),
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                        ),)
                    ],
                  )
              )
            ],
          )

      ),
    );
  }
}
