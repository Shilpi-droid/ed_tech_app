
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../models/Mentor.dart';

class FamousMentorCard extends StatelessWidget {
   FamousMentorCard({Key? key,required this.mentor}) : super(key: key);

  Mentor mentor;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List <String> pfps=[
      "assets/MentorPage/pfp1.png",
      "assets/MentorPage/pfp2.png",
      "assets/MentorPage/pfp3.png",
      "assets/MentorPage/pfp4.png",
    ];
    Random random = Random();
    String img=pfps[random.nextInt(pfps.length)];
    return Container(
      height: width*.25+height*.09,
      width: width*.27,
     // color: Colors.black38,
      child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: width*.29,
                    width:  width*.25+height*.04,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border:Border.all(color: Colors.white.withOpacity(0.18)),
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white.withOpacity(.45),
                                      Colors.white.withOpacity(0.03),
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
                                    Center(
                                      child: Text(
                                          mentor.name,
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        mentor.qualification,
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11
                                        ),
                                      ),
                                    ),
                                     SizedBox(height: 2,),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 1.0),
                                      child: Image.asset(mentor.orgImg,scale: 3.5,),
                                    ),
                                    Row(children: [
                                      Icon(Icons.star,color: Colors.white,size: 15,),
                                      Text(
                                          "Mentoring here for",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ],),
                                    Text(
                                        "${mentor.priorMentoringExp}+ yrs",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10
                                      ),
                                    )

                                  ],
                                )
                            ),
                          ]),
                    )
                )
            ),

            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(img,scale: 2.5,)
            ),
          ]
      ),
    );
  }
}
