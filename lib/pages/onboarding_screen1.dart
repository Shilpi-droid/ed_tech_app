
import 'dart:ui';

import 'package:flutter/material.dart';

import 'onboarding_screen2.dart';


class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: height*.28,
              left: width*.1,
              child:Image(image: AssetImage('assets/onboarding/onb1.png')),
            ),
            Positioned(
                top: height*.62,
                left: width*.05,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                      );
                    },
                    child: Container(
                      width: width*.9,
                      height: height*.35  ,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaY: 3,
                              sigmaX: 3,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 50,),
                                Text(
                                    "Discover your next skill",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Learn anything you want!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Text(
                                  "Discover the things you want",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("To learn & grow with them",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color(0xff5D73C3),
                                    boxShadow: [
                                      BoxShadow(blurRadius: 25,
                                        color: Colors.black38,
                                        offset: Offset(
                                        -3.0, // Move to right 10  horizontally
                                        5.0, // Move to bottom 10 Vertically
                                      ),)
                                    ],
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                    child: Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white ,
                                          ),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border:Border.all(color: Colors.white.withOpacity(0.18)),
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white.withOpacity(0.3),
                                  Colors.white.withOpacity(0.08),
                                ]
                              )
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
