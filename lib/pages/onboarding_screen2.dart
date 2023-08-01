import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: height*.15,),
                Container(
                  height: height*0.4,
                  width: width,
                  child: Image(image: AssetImage('assets/onboarding/onboarding2.png'),),
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      height: height*0.35,
                      width: width,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        //color: Colors.white.withOpacity(0.3),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white.withOpacity(0.1),
                          ],
                          begin:Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.2,0.6],
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color:Colors.white.withOpacity(0.6), width: 0.4),

                      ),
                      child: Column(
                        children: [
                          SizedBox(height:20),
                          Text("Communities Empower\nEducation & Transform\nLives. Let's Engage In Our\nCommunities & Foster\nGrowth Together.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height:height*0.028),
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: Offset(
                                      0,
                                      5,
                                    ),
                                  )
                                ]
                            ),
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  backgroundColor: Color(0xff5D73C3),
                                  primary: Colors.red.withOpacity(0),
                                  shadowColor: Colors.black,

                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SignInPage()),
                                  );
                                },
                                child: Text(
                                  'Join Us',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Text("Skip For Now",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}