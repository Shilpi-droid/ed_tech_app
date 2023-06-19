
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';
import '../../models/Mentee.dart';

class MentorReviewCard extends StatelessWidget {
   MentorReviewCard({Key? key,required this.mentee}) : super(key: key);

  Mentee mentee;
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
        height: width*.45+height*.09,
        width: width*.48,
        // color: Colors.yellow,
        child: Stack(
        children: [
        Positioned(
        bottom: height*.018,
        right: 0,
        child: Container(
        height: width*.45+height*.02,
        width:  width*.48,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                        SizedBox(height: width*.09,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: width*.081),
                          child: Row(
                            children: List.generate(5, (index) => Icon(
                              index < mentee.rating ? Icons.star : Icons.star_border,
                              size: 20,
                              color: index < mentee.rating ? Colors.white : Colors.black38,
                            ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: width*.16,
                            width: width*.4,
                            //color: Colors.yellow,
                            child: Text(
                              "\"${mentee.review}\"",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,fontSize: 10),),
                          ),
                        ),
                        Text(
                          mentee.name,
                          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          mentee.status,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 9,),
                        ),
                        Text(
                          mentee.duration,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 9,),
                        )
                      ],
                    )
              ),
              ]),
          ),
        )
        )
        ),
          Positioned(
              bottom: 0,
              left: width*.2,
              child: Image.asset("assets/MentorPage/triangle.png",scale: 1.9,)
          ),
          Positioned(
              top: 10,
              left: width*.13,
              child: Image.asset(img,scale: 2,)
          ),
        ]
    )
    );
  }
}
