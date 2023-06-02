
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/signin_page.dart';


class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
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
              top: height*.18,
              left: width*.13,
              child:Image(image: AssetImage('assets/onboarding/onb2.png')),
            ),
            Positioned(
                top: height*.53,
                left: width*.05,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                    child: Container(
                      width: width*.9,
                      height: height*.45  ,
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
                                  SizedBox(height: 30,),
                                  Text(
                                    "Education is for",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "improving the lives of",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "others & for leaving your",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "community & world",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("better than you found it.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 30,),

                                  Text("Join our community now.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
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
                                        'Join Us',
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
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white.withOpacity(0.48),
                                      Colors.white.withOpacity(0.05),
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
