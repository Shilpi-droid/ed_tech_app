
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../pages/MentorIntro/mentor_onboarding_page.dart';

class MentorPageSteps extends StatelessWidget {
  const MentorPageSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return  Container(
      height: height*.2,
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
                        Colors.white.withOpacity(.3),
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
                      SizedBox(height: height*.01,),
                      Row(
                        children: [
                          Image.asset("assets/MentorPage/step1.png",scale: 3.2,),
                          Image.asset("assets/MentorPage/step2.png",scale: 3.2,),
                          Image.asset("assets/MentorPage/step3.png",scale: 3.2,),
                        ],
                      ),
                      SizedBox(height: height*.01,),
                      Text("Now you know how to join us",style: TextStyle(color: Colors.white),),
                      Text("What are you waiting for?",style: TextStyle(color: Colors.white),),
                      SizedBox(height: height*.02,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MentorOnboarding()),

                          );
                        },
                        child: Container(
                          width: width*.25,
                          height: height*.035,
                          decoration: BoxDecoration(
                              color: Color(0xff5D73C3),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white70.withOpacity(.3))
                          ),
                          child: Center(child: Text('Apply Now',style: TextStyle(color: Colors.white),)),
                        ),
                      )
                    ],
                  )
              )
            ],
          )

      ),
    );
  }
}
