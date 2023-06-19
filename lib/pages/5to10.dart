import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/buttons.dart';
import 'package:skido/widgets/categories.dart';
import 'package:skido/widgets/connectcard.dart';
import 'package:skido/widgets/division.dart';

import '../widgets/5-10widgets.dart';

class Fiveto10 extends StatefulWidget {
  const Fiveto10({super.key});

  @override
  State<Fiveto10> createState() => _Fiveto10State();
}

class _Fiveto10State extends State<Fiveto10> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
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
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white)
                      ),
                    ],
                  ),
                  Text("Coding Courses",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  // CodingCourse510(image: 'assets/5-10/5-10cc1.png', heading: 'MERN Stack', buttontxt: 'MERN Stack', time: '140', mrp: '599'),
                  Container(
                    height: 120,
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CodingCourse510(image: 'assets/5-10/5-10cc1.png', heading: 'MERN Stack', buttontxt: 'MERN Stack', time: '140', mrp: '599'),
                        SizedBox(width: 15),
                        CodingCourse510(image: 'assets/5-10/5-10cc2.png', heading: 'Game Development', buttontxt: 'Game Development', time: '200', mrp: '699'),
                        SizedBox(width: 15),
                        CodingCourse510(image: 'assets/5-10/5-10cc3.png', heading: 'Game Development', buttontxt: 'Web Development', time: '260', mrp: '799'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TransPButtonDrop(text: 'Grade', height: 21, width: 76),
                      SizedBox(width: 15),
                      TransPButtonDrop(text: 'All Languages', height: 21, width: 108),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text("Testimonials",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    height: 117,
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Test1510(
                            text: "“I've learned that this isn’t just playing a game. SKIDO really allows a child’s creativity to come through, which I think is phenomenal.”",
                            name: 'Danielle Dadder',
                            role: 'Parent',
                            address: 'Naples, FL',
                            image: 'assets/5-10/5-10test1.png',
                        ),
                        Test1510(
                          text: "“They don’t enjoy math, but with the SKIDO app they’re working through the analyticalskills and it is teaching them.”",
                          name: 'Maria Luongo',
                          role: 'Parent',
                          address: 'Pennsylvania',
                          image: 'assets/5-10/5-10test2.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Categories(text: "Enroll Now"),
                  SizedBox(height: 10),
                  Text("Private Tutors",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  PrivateTut(
                      image: 'assets/5-10/5-10pt1.png',
                      descp: "Miss Angelita is an incredible tutor. Through her energy, thoughtfulness and creativity, she was able to get my child interested in math that she......."
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TransPButtonDrop(text: 'Grade', height: 21, width: 76),
                      SizedBox(width: 15),
                      TransPButtonDrop(text: 'Tutor', height: 21, width: 76),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Personality Development",
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
                    height: 120,
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CodingCourse510(image: 'assets/5-10/5-10pd1.png', heading: 'MERN Stack', buttontxt: 'Life Skills', time: '140', mrp: '599'),
                        SizedBox(width: 15),
                        CodingCourse510(image: 'assets/5-10/5-10pd2.png', heading: 'Game Development', buttontxt: 'Leadership', time: '200', mrp: '699'),
                        SizedBox(width: 15),
                        CodingCourse510(image: 'assets/5-10/5-10pd3.png', heading: 'Game Development', buttontxt: 'Web Development', time: '260', mrp: '799'),
                      ],
                    ),
                  ),
                  //CodingCourse510(image: 'assets/5-10/5-10cc1.png', heading: 'MERN Stack', buttontxt: 'MERN Stack', time: '140', mrp: '599'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TransPButtonDrop(text: 'Grade', height: 21, width: 76),
                      SizedBox(width: 15),
                      TransPButtonDrop(text: 'Course Name', height: 21, width: 108),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Testimonials",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    height: 110,
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Test2510(
                            name: 'Supriya Banthia',
                            classno: '6',
                            school: 'ABC School',
                            image: 'assets/5-10/5-10test2_1.png',
                            text: 'SKIDO has helped me in many ways. Firstly, it organised mock GD & PI sessions that strengthened.....',
                        ),
                        Test2510(
                          name: 'Aashna Ahuja',
                          classno: '6',
                          school: 'ABC School',
                          image: 'assets/5-10/5-10test2_2.png',
                          text: 'SKIDO academy has helped me improve on my short comings related to personality. .',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Categories(text: 'Enroll Now'),
                  SizedBox(height: 10),
                  Text(
                    'Quiz Section',
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
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CodingQuiz(image: 'assets/8to12/quiz1.png', heading: 'Intoduction to Scratch Programming', buttontxt: 'Scratch', grade: '1-8', level: 'Beginner'),
                        SizedBox(width: 15),
                        CodingQuiz(image: 'assets/8to12/quiz2.png', heading: 'Intoduction to Application Development', buttontxt: 'App Lab', grade: '1-8', level: 'Beginner'),
                        SizedBox(width: 15),
                        CodingQuiz(image: 'assets/5-10/quiz3.png', heading: 'Intoduction to Game Development', buttontxt: 'Play Lab', grade: '1-8', level: 'Beginner'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Testimonials",
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
                    height: 127,
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Test3510(
                            descp: 'SKIDO is the best mentors for ehancing programming skills. When i first met them.',
                            image: 'assets/5-10/test_31.png',
                            name: 'Divyanshu Singh',
                            classno: '6',
                            school: 'ABC School'
                        ),
                        Test3510(
                            descp: 'I have been a student of Career Camp by SKIDO. Undoubtedly the best experience a student can have.',
                            image: 'assets/5-10/test_32.png',
                            name: 'Naina Grover',
                            classno: '6',
                            school: 'ABC School'
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Categories(text: 'Enroll Now'),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 100,
                        width: width-30,
                        decoration: BoxDecoration(
                          //color: Colors.white.withOpacity(0.3),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff5D73C3).withOpacity(0.2),
                              Colors.white.withOpacity(0.2),
                            ],
                            begin:Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.3,1],
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color:Colors.white, width: 0.2),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  'Join Community',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'A community is a group of people living in a particular area. A communityc\nan be made up of a large or small group of people. The land area of a community\ncan also be large or small.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Container(
                                  height: 25,
                                  width: 83,
                                  child: Image(
                                    image: AssetImage('assets/5-10/socialmedia.png'),
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Upcoming Events",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UpcEve(
                          desc: 'It gives the students a chance to enhance their knowledge of various national and international .....Read More',
                          image: 'assets/5-10/ue2.png',
                          heading: 'International Quiz Day',
                          date: '26th June, 2023',
                          day: 'Saturday',
                          time: '9AM - 12PM'
                      ),
                      SizedBox(width: 20),
                      UpcEve(
                          desc: 'Celebrating Yoga & all the social & health benefits we can enjoy through it’s practice',
                          image: 'assets/5-10/ue1.png',
                          heading: 'International Yoga Day',
                          date: '26th June, 2023',
                          day: 'Saturday',
                          time: '9AM - 12PM'
                      ),
                      SizedBox(width: 20),
                      UpcEve(
                          desc: "Rotary Club of Nagpur Vision is one of central India's premier service organizations engaged in....Read More",
                          image: 'assets/5-10/ue3.png',
                          heading: 'RCNV Kidathon',
                          date: '26th June, 2023',
                          day: 'Saturday',
                          time: '9AM - 12PM'
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Testimonials",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    height: 92,
                    width: 290,
                    child: Stack(
                      children: [
                        Container(
                          height: 92,
                          width: 290,
                          child: Column(
                            children: [
                              SizedBox(height: 11),
                              Row(
                                children: [
                                  SizedBox(width: 47),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        height: 75,
                                        width: 243,
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
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "I loved everything. Literally everything. The two locations and experiencing two parts of the country, the people, the practice, the food, the activities… everything. My favorite part of the retreat was the BPP day. And also meeting so many wonderful people.",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 7,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 8),
                                                Text(
                                                  "Divisha Singh | Class 10th\nABC School",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 7,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 77,
                            height: 83,
                            child: Image(
                              image: AssetImage('assets/5-10/test_21.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Categories(text: 'Enroll Now'),
                  SizedBox(height: 20),
                  Text("Reading Materials",
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
                    height: 96,
                    width: width - 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ReadingMat(image: 'assets/5-10/rm1.png', button: 'E-Book'),
                        SizedBox(width: 10),
                        ReadingMat(image: 'assets/5-10/rm2.png', button: 'Articles'),
                        SizedBox(width: 10),
                        ReadingMat(image: 'assets/5-10/rm3.png', button: 'Study Guide'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TransPButtonDrop(text: 'Grade', height: 21, width: 76),
                      SizedBox(width: 5),
                      TransPButtonDrop(text: 'Choose', height: 21, width: 79),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text("Find School",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    height: 170,
                    width: width-30,
                    child: Stack(
                      children: [
                        Container(
                          height: 170,
                          width: width-30,
                          child: Column(
                            children: [
                              SizedBox(height: 23),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        height: 137,
                                        width: 326,
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
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("NAME:\n\nCONTACT NO:\n\nCLASS OF YOUR WARD:\n\nPINCODE:",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    //fontFamily: "Montserrat",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  ),
                                                ),
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
                          alignment: AlignmentDirectional.centerEnd,
                          child: Container(
                            // color: Colors.red,
                            width: 98,
                            height: 169,
                            child: Image(
                              image: AssetImage('assets/5-10/findschool.png'),
                              fit: BoxFit.fill,
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
        )
      ),
    );
  }
}
