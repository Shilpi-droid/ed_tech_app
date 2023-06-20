
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../models/Mentor.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({Key? key,required this.mentor}) : super(key: key);

  final Mentor mentor;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.2,
      width: width*.75,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 0,
            child: Container(
              height: height*.15,
              width: width*.6,
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

                      ),
                      Positioned(
                        right: 10,
                        child: Container(
                          height: height*.16,
                          width: width*.5,
                          child: Column(
                              children:[
                                SizedBox(height: 20,),
                                Text(
                                  '${mentor.name}, ${mentor.qualification} at ${mentor.orgName}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),
                                ),
                                Text(
                                  'Mentoring at Skido for last ${mentor.priorMentoringExp} years',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontSize: 12),
                                ),
                                SizedBox(height: height*.01,),
                                Row(
                                  children: [
                                    SizedBox(width: width*.035,),
                                    ConnectButton(),
                                    SizedBox(width: width*.02,),
                                    NextButton(),
                                    SizedBox(width: width*.035,),
                                ],)
                              ]
                          ),
                        ),
                      ),
                      ]
                  )

              ),
            ),
          ),
          Positioned(
              left: -2.5,
              top: 0,
              child: Image.asset("assets/MentorPage/mentor_card_vector.png",scale: .6,))
        ],
      ),
    );
  }
}


class ConnectButton extends StatelessWidget {
  const ConnectButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.03,
      width: width*.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(.7)),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Container(
                height: height*.03,
                width: width*.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.4),
                        Colors.white.withOpacity(0.01),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:Center(
                    child:
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 3.0,horizontal: 7),
                      child: Text(
                        "Connect",
                        style: TextStyle(
                            color: Color(0xff4F508E),
                            fontWeight: FontWeight.bold
                        ),),
                    )),
              )
            ],
          )

      ),
    );
  }
}
class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        height: height*.031,
        width: width*.2,
        decoration: BoxDecoration(
          color: Color(0xff4F508E),
        border:Border.all(color: Colors.white.withOpacity(0.4)),
    borderRadius: BorderRadius.circular(30),),
      child: Center(child: Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),)),
    );
  }
}

