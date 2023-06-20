import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/widgets/categories.dart';

class GoogleInt extends StatefulWidget {
  const GoogleInt({super.key});

  @override
  State<GoogleInt> createState() => _GoogleIntState();
}

class _GoogleIntState extends State<GoogleInt> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,)
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Google Interview Questions",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 203,
                            child: Text("\u2022 What is your favorite Google product, and how would you improve it?",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 203,
                            child: Text("Possible Answer: My favorite Google product is Google Maps. It’s helped me find my way when I’ve been lost either in town or on my travels, and I love how it shows me where there’s traffic or other potential sources of delays. To improve it, I would offer customers a paid, live map version that doesn’t require data to see paths to certain areas. This will help people traveling in remote communities, without access to data.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                      Container(
                          width: 159,
                          height: 204,
                          // color: Colors.blue,
                          child: Image(image: AssetImage('assets/GoogleInt/googleint1.png'), fit: BoxFit.fill,)
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Google Behavorial Interview\nQuestions",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 203,
                            child: Text("\u2022 What is your favorite Google product, and how would you improve it?",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 203,
                            child: Text("Possible Answer: My favorite Google product is Google Maps. It’s helped me find my way when I’ve been lost either in town or on my travels, and I love how it shows me where there’s traffic or other potential sources of delays. To improve it, I would offer customers a paid, live map version that doesn’t require data to see paths to certain areas. This will help people traveling in remote communities, without access to data.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                      Container(
                          width: 159,
                          height: 204,
                          // color: Colors.blue,
                          child: Image(image: AssetImage('assets/GoogleInt/googleint2.png'), fit: BoxFit.fill,)
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 270,
                    width: width-30,
                    child: Stack(
                      children: [
                        Container(
                          height: 270,
                          width: width-30,
                          child: Column(
                            children: [
                              SizedBox(height: 34),
                              Row(
                                children: [
                                  SizedBox(width: 45),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        height: 173,
                                        width: 302,
                                        decoration: BoxDecoration(
                                          //color: Colors.white.withOpacity(0.3),
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.white.withOpacity(0.4),
                                              Colors.white.withOpacity(0.1),
                                            ],
                                            begin:Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.2,0.8],
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                          border: Border.all(color:Colors.white, width: 0.4),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "For more detailed Questions",
                                                  textAlign: TextAlign.right,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 7),
                                                Text(
                                                  'Connect with our Mentors',
                                                  textAlign: TextAlign.right,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 45),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Categories(text: 'Chat'),
                                                    SizedBox(width: 10),
                                                    Categories(text: 'Call'),
                                                  ],
                                                )
                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Container(
                            width: 127,
                            height: 210,
                            child: Image(
                              image: AssetImage('assets/InterviewRole/interviewrole2.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// What is your favorite Google product,
// and how would you improve it?
//
// Possible Answer: My favorite
// Google product is Google Maps.
// It’s helped me find my way when
// I’ve been lost either in town or on
// my travels, and I love how it shows
// me where there’s traffic or other
// potential sources of delays. To
// improve it, I would offer
// customers a paid, live map
// version that doesn’t require
// data to see paths to certain areas. This will help
// people traveling in remote communities, without
// access to data.
//
// Note: Have fun with this question! We added a product
// example, but there are so many Google products to
// choose from for this answer.
//
//
//
//
// Briefly explain the difference between coding and
// programming.
//
// Answer: Coding strictly refers to writing code for
// implementing a solution to a problem. Programming,
// although wrongly used interchangeably with coding, is
// a wider process that involves coding as well as coming
// up with an approach for solving a particular problem
// and other program development tasks like testing.