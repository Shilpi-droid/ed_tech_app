
import 'dart:ui';

import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
   EventWidget({Key? key,required this.topic,required this.subtopic,required this.timing}) : super(key: key);

  final String topic;
  final String subtopic;
  final String timing;
  List RandomImages=[
    "assets//MentorPage/p1.png",
    "assets//MentorPage/p2.png",
    "assets//MentorPage/p3.png",
    "assets//MentorPage/p4.png",
  ];
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.11,
      width: width*.85,
        decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.6)),
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
                        Colors.white.withOpacity(.3),
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
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0,left: 10),
                        child: Text("${topic}, ${subtopic}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white
                        ),),
                      ),
                    Padding(
                      padding:  EdgeInsets.only(left:10 ,top: 2.0),
                      child: Text("${timing}",
                        style: TextStyle(

                            fontSize: 16,
                            color: Colors.white
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          for(int i=0;i<RandomImages.length;i++)
                            Align(
                              widthFactor: .6,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 14,
                                //  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(RandomImages[i]),
                                ),
                              ),
                            )

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )

      ),
    );
  }
}
