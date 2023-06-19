import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/pages/working_proffessional_page1.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/buttons.dart';
import 'package:skido/widgets/categories.dart';
import 'package:skido/widgets/ment.dart';
import 'package:skido/widgets/skillblog.dart';
import 'package:skido/widgets/testysk.dart';

class WorkingProf extends StatefulWidget {
  const WorkingProf({Key? key}) : super(key: key);

  @override
  State<WorkingProf> createState() => _WorkingProfState();
}

class _WorkingProfState extends State<WorkingProf> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/elements/backg.png'),
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
                  CardUI(
                      height: 210,
                      width: width-30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'F  ollow\nO  ne\nC  ourse\nU  ntil\nS  uccess',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  //fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 176,
                                  width: 140,
                                  child: Image(image: AssetImage('assets/WorkingProfessional/workingpf1.png'), fit: BoxFit.fill,)
                              )
                            ],
                          )
                        ],
                      )
                  ),
                  // SizedBox(height: 20),
                  // Text(
                  //   'Experience Level',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     TransPButton(text: 'Beginner', height: 30, width: 98, fsize: 13,),
                  //     SizedBox(width: 20),
                  //     TransPButton(text: 'Intermediate', height: 30, width: 98, fsize: 13,),
                  //     SizedBox(width: 20),
                  //     TransPButton(text: 'Advanced', height: 30, width: 98, fsize: 13,),
                  //   ],
                  // ),
                  // SizedBox(height: 20),
                  // Text(
                  //   'Career Goal',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     GestureDetector(
                  //         onTap: (){
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(builder: (context) =>  WorkingProffessional1()),
                  //           );
                  //         },
                  //         child: TransPButton(text: 'Learning', height: 30, width: 98, fsize: 13,)),
                  //     SizedBox(width: 20),
                  //     TransPButton(text: 'Changing Job', height: 30, width: 110, fsize: 13,),
                  //   ],
                  // ),
                  SizedBox(height: 20),
                  Text(
                    'Explore',
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
                    height: 145,
                    width: width-30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                // TransPButton(text: 'Free\nCourses', height: 48, width: 98, fsize: 15),
                                // SizedBox(width: 8),
                                // TransPButton(text: 'Premium\nCourses', height: 48, width: 98, fsize: 15),
                                GlassButton(text: 'Programming\nCourses', onPressed: (){}),
                                SizedBox(width: 8),
                                GlassButton(text: 'Premium\nCourses', onPressed: (){}),

                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                // TransPButton(text: 'Meet our\nMentors', height: 52, width: 98, fsize: 15),
                                // SizedBox(width: 8),
                                // TransPButton(text: 'Read &\nProceed', height: 52, width: 98, fsize: 15),
                                GlassButton(text: 'Meet our\nMentors', onPressed: (){}),
                                SizedBox(width: 8),
                                GlassButton(text: 'Read &\nProceed', onPressed: (){}),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 127,
                              child: Image(
                                image: AssetImage('assets/WorkingProfessional/workingpf2.png'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Free Courses',
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
                    height: 145,
                    width: width-30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 127,
                              child: Image(
                                image: AssetImage('assets/WorkingProfessional/workingpf3.png'),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                // TransPButton(text: 'Digital\nMarketing', height: 52, width: 100, fsize: 15),
                                // SizedBox(width: 8),
                                // TransPButton(text: 'Product\nManagement', height: 52, width: 100, fsize: 15),
                                GlassButton(text: 'Digital\nMarketing', onPressed: (){}),
                                SizedBox(width: 8),
                                GlassButton(text: 'Product\nManagement', onPressed: (){}),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                // TransPButton(text: 'Data\nScience', height: 52, width: 100, fsize: 15),
                                // SizedBox(width: 8),
                                // TransPButton(text: 'Python', height: 52, width: 100, fsize: 15),
                                GlassButton(text: 'Data\nScience', onPressed: (){}),
                                SizedBox(width: 8),
                                GlassButton(text: 'Python', onPressed: (){}),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Test Your Skills',
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
                    height: 160,
                    width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        TestSkillCard(cname: 'Digital\nMarketing', rem: '10 Test Available'),
                        SizedBox(width: 10),
                        TestSkillCard(cname: 'Data Science', rem: '10 Test Available'),
                        SizedBox(width: 10),
                        TestSkillCard(cname: 'Product\nManagement', rem: '10 Test Available'),
                      ],
                    ),
                  ),
                  // Text(
                  //   'Mentors & Mentees',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Mentorees(name: 'Emma Hardy', post: 'CEO, BioCell Company', image: 'assets/WorkingProfessional/workingofm1.png'),
                  //     SizedBox(width: 20),
                  //     Mentorees(name: 'Damon Tardo', post: 'CEO, ABC Company', image: 'assets/WorkingProfessional/workingofm2.png'),
                  //     SizedBox(width: 20),
                  //     Mentorees(name: 'Lita Richards', post: 'CEO, X2 Automobiles', image: 'assets/WorkingProfessional/workingofm3.png'),
                  //   ],
                  // ),
                  // SizedBox(height: 20),
                  // Text(
                  //   'Skill Blogs',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Container(
                  //   height: 218,
                  //   width: width-30,
                  //   child: ListView(
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       SkillBlogCard(
                  //           image: 'assets/WorkingProfessional/workingpfsk1.png',
                  //           cname: 'Data Structures and Algorithms',
                  //           desc: 'A data structure is a named location that can be used to store and organize data. And, an algorithm is a collection of steps to solve a particular problem. Learning data structures and algorithms allow us to write efficient and optimized computer programs.'
                  //       ),
                  //       SizedBox(width: 28),
                  //       SkillBlogCard(
                  //           image: 'assets/WorkingProfessional/workingpfsk2.png',
                  //           cname: 'Database and SQL',
                  //           desc: 'Structured query language (SQL) is a programming language for storing and processing information in a relational database. A relational database stores information in tabular form.'
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
