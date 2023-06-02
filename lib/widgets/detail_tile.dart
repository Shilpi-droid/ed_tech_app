

import 'dart:ui';

import 'package:flutter/material.dart';

class DetailTile extends StatelessWidget {
  DetailTile({Key? key,required this.imgUrl,required this.text}) : super(key: key);

  String imgUrl;
  String text;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width*.3,
      width: width*.2,
      child: Stack(
        children: [
          Container(
            height: width*.2,
            width: width*.2,
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
                            Colors.white.withOpacity(.5),
                            Colors.white.withOpacity(0.08),
                          ]
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 3,
                      sigmaX: 3,
                    ),
                    child:Center(child: Image.asset(imgUrl)),
                  )
                ],
              )
        ),
          ),
          Positioned(
              top: width*.21,
              left: 0,
              right: 0,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))

        ]
      ),
    );
  }
}
