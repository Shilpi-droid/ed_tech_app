import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/widgets/buttons.dart';
import 'package:skido/widgets/categories.dart';
import 'package:skido/widgets/division.dart';
import 'package:skido/widgets/sharedprojcard.dart';

import '../ui.dart';

class Eightto12 extends StatefulWidget {
  const Eightto12({Key? key}) : super(key: key);

  @override
  State<Eightto12> createState() => _Eightto12State();
}

class _Eightto12State extends State<Eightto12> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/elements/backg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        // padding: EdgeInsets.all(-1),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                          icon: Icon(Icons.arrow_back_ios_rounded, size: 25, color: Colors.white,),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 190,
                        width: width - 30,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: (width-30)*0.8-6,
                              child: RichText(
                                textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      //fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: '"', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                      TextSpan(text:"To provide the highest impact STEM(", style: TextStyle(fontWeight: FontWeight.w100)),
                                      TextSpan(text: 'Science, Technology, Engineering, and Mathematics', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '), computer coding, and artificial intelligence education programs to inspire Black and Hispanic youth to pursue computing careers and tech entrepreneurship. ',style: TextStyle(fontWeight: FontWeight.w100)),
                                      TextSpan(text: '"', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

                                    ]
                                  ),
                              ),
                            ),
                            Container(
                                width: width*0.2,
                                height: 190,
                                child: Image(image: AssetImage('assets/8to12/boy1.png'), fit: BoxFit.contain,)
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Coding quizzes for kids',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'All practice quizzes',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CodingQuiz(image: 'assets/8to12/quiz1.png', heading: 'Intoduction to Scratch Programming', buttontxt: 'Scratch', grade: '1-8', level: 'Beginner'),
                      SizedBox(width: 15),
                      CodingQuiz(image: 'assets/8to12/quiz2.png', heading: 'Intoduction to Application Development', buttontxt: 'App Lab', grade: '1-8', level: 'Beginner'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Course Categories',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CourseCat(cname: 'Scratch', descp: 'Python has a simple syntax similar to the English language. Python has syntax that allows developers to write programs with fewer lines than some other programming languages. Python runs on an interpreter system, meaning that code can be executed as soon as it is written.'),
                      SizedBox(width:10),
                      CourseCat(cname: 'Python', descp: 'Python has a simple syntax similar to the English language. Python has syntax that allows developers to write programs with fewer lines than some other programming languages. Python runs on an interpreter system, meaning that code can be executed as soon as it is written.'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Featured Courses',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 190,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        FeaturedCourse(image: 'assets/8to12/fc1.png', heading: 'Intoduction to Scratch Programming', buttontxt: 'Scratch', grade: '1-8', level: 'Beginner'),
                        SizedBox(width: 10),
                        FeaturedCourse(image: 'assets/8to12/fc2.png', heading: 'Intoduction to Application Development', buttontxt: 'App Lab', grade: '1-8', level: 'Beginner'),
                        SizedBox(width: 10),
                        FeaturedCourse(image: 'assets/8to12/fc3.png', heading: 'Intoduction to Scratch Programming', buttontxt: 'Scratch', grade: '1-8', level: 'Beginner'),
                      ],
                    ),

                  ),
                  SizedBox(height: 20),
                  Text(
                    'Cool FACTS About\nProgramming and Coding\nYou NEED to Know',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height:5),
                  CardUI(
                      height: 45,
                      width: width-50,
                      child: Center(
                        child: Text(
                            'Coding Bugs were NOT named after an actual bug',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                      ),
                  ),
                  SizedBox(height:5),
                  CardUI(
                    height: 45,
                    width: width-50,
                    child: Center(
                      child: Text(
                        'Coding will soon be as important as reading.',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Categories(text: 'Explore'),
                  SizedBox(height: 20),
                  Text(
                    "Successor's Testimonials",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Testimonials(imageUrl: 'assets/8to12/testi1.png', div: 'Neha Grover', descp: 'SKIDO is the best mentors for enhancing programming skills. When i first met them. I wasn’t sure how to start programming career since I was from finance & commercebackground. I was afraid whether i will be able to understandsomething in the field of programming or not.'),
                      Testimonials(imageUrl: 'assets/8to12/testi2.png', div: 'Divyanshu Singh', descp: 'I have been a student of Career Camp by SKIDO.Undoubtedly te best experience a student can have. Theydeliver what they promise. Teachers like Rahul Sir,Swarn Sir, Meghhaa Ma’am were simply the best. FromBasics of Data Structure to Full Stack web developmentthey cover each topic in depth.')
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Shared projects by coders",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: width - 30,
                    height: 220,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SharedProj(
                            image: 'assets/8to12/sp1.png' ,
                            heading: 'No sprites Animation Challenge',
                            descp: 'Test your understanding of variables & draw loop by creating an animatedscene without any sprited!'
                        ),
                        SizedBox(width: 5),
                        SharedProj(
                            image: 'assets/8to12/sp2.png',
                            heading: 'Randomized Image Creator',
                            descp: 'Apply knowledge of user input & draw loop to create on demand randomized images'
                        ),
                        SizedBox(width: 5),
                        SharedProj(
                            image: 'assets/8to12/sp3.png',
                            heading: 'Teach a Science Concept',
                            descp: 'Create your own pixel animations & add text to create an interactive presentation about science concept - or any other topic!'
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  PlayCard(
                      height: 120,
                      width: width-30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(7),
                                  height: 40,
                                  width: 82,
                                  child: Image(image: AssetImage('assets/Landing_page/mainlogo.png'))
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Play & Earn",
                                  //textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Play a quiz and earn upto 50 coins",
                                  //textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                    width: 173,
                                    height: 120,
                                    child: Image(image: AssetImage('assets/8to12/play.png',),fit: BoxFit.contain,)
                                ),
                              )
                            ],
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
