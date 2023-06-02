import 'dart:ui';

import 'package:flutter/material.dart';


class CourseTile extends StatelessWidget {
  const CourseTile({Key? key,required this.img,required this.name,required this.price,required this.description}) : super(key: key);

  final String img;
  final String name;
  final String price;
  final String description;

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
                  left: -4.8, child:  Image.asset(img,scale:0.85,)
              ),
              Positioned(
                  top: 15,
                  left: 115,
                  child:  Text(name,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23 ),)
              ),
              Positioned(
                  top: 48,
                  left: 115,
                  child:  Row(
                    children: [
                      Container(
                        width: 245,
                        child: Flexible(
                          child: Text(description,
                            style: TextStyle(color: Colors.white,fontSize: 8),),
                        ),
                      ),
                    ],
                  )
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child:  Text("Rs. $price/-",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16 ),)
              ),


            ],
          ),
        ),
      ),
    );
  }
}


//Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 height: height * .6,
//                 width: width * .95,
//                 child: ListView.builder(
//                     itemCount: Course.courseList.length,
//                     scrollDirection: Axis.vertical,
//                     physics: const BouncingScrollPhysics(),
//                     itemBuilder: (BuildContext context, int index) {
//                       return Stack(children:[
//                         GestureDetector(
//                             onTap: (){
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => DetailPage(index: index)),
//                               );
//                             },
//                             child: CourseTile(index: index,)
//                       ),
//                         Positioned(
//                             bottom: 0,
//                             right: 20,
//                             child:  GestureDetector(
//                               onTap: (){
//                                 setState(() {
//                                   Course.courseList[index].isFavorated=!Course.courseList[index].isFavorated;
//                                 });
//                               },
//                               child: Icon(
//                                 Course.courseList[index].isFavorated?
//                                 Icons.favorite:
//                                 Icons.favorite_border,
//                                 color: Course.courseList[index].isFavorated?
//                                 Color(0xff5D73C3):Colors.white,
//                               ),
//                             )
//                         ),
//                       ]);
//                     }),
//               )