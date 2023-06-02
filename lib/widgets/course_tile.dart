
import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/Course.dart';

class CourseTile extends StatelessWidget {
  const CourseTile({Key? key,required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(

      padding:  EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: width*.95,
          height: height*.12,
          color: Colors.transparent,
          child: Stack(

            children: [

              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(50),
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
              ),
              Positioned(
                  top: 0,
                  left: -4.8, child:  Image.asset(Course.courseList[index].imageURL,scale:0.85,)
              ),
              Positioned(
                  top: 15,
                  left: 115,
                  child:  Text(Course.courseList[index].name,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23 ),)
              ),
              Positioned(
                  top: 48,
                  left: 115,
                  child:  Container(
                    height: 50,
                    width: width*.55,
                    child: Flexible(
                      child: Text(Course.courseList[index].description,
                        style: TextStyle(color: Colors.white,fontSize: 6.5),),
                    ),
                  )
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child:  Text("Rs. ${Course.courseList[index].price.toString()} /-",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16 ),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
