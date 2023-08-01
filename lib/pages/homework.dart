// import 'package:flutter/material.dart';
// import 'package:skido/pages/5to10.dart';
// import 'package:skido/pages/aboutus.dart';
// import 'package:skido/pages/googleint.dart';
// import 'package:skido/pages/interview.dart';
// import 'package:skido/pages/interviewrole.dart';
// import 'package:skido/pages/test.dart';
// import 'package:skido/widgets/categories.dart';
//
// class Homework extends StatefulWidget {
//   const Homework({Key? key}) : super(key: key);
//
//   @override
//   State<Homework> createState() => _HomeworkState();
// }
//
// class _HomeworkState extends State<Homework> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.brown,
//         body: Column(
//           children: [
//             IconButton(
//                 icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,),
//                 onPressed: (){Navigator.pop(context);},
//             ),
//             GestureDetector(
//                 child: Categories(text: '5-10 page'),
//                 onTap: (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) =>  Fiveto10()),
//                   );
//                 },
//             ),
//             GestureDetector(
//                 child: Categories(text: 'About us'),
//                 onTap: (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) =>  AboutUs()),
//                   );
//                 },
//             ),
//             GestureDetector(
//                 child: Categories(text: 'Int Ques'),
//                 onTap: (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) =>  InterviewRole()),
//                   );
//                 },
//             ),
//             GestureDetector(
//                 child: Categories(text: 'G Int ques'),
//                 onTap: (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) =>  GoogleInt()),
//                   );
//                 },
//             ),
//             GestureDetector(
//               child: Categories(text: 'Interview'),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) =>  Interview()),
//                 );
//               },
//             ),
//             GestureDetector(
//               child: Categories(text: 'Test'),
//               onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) =>  TestPage()),
//                 );
//               },
//             ),
//           ],
//         )
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/pages/5to10.dart';
import 'package:skido/pages/aboutus.dart';
import 'package:skido/pages/googleint.dart';
import 'package:skido/pages/interview.dart';
import 'package:skido/pages/interviewrole.dart';

import 'package:skido/ui.dart';
import 'package:skido/widgets/categories.dart';

class Homework extends StatefulWidget {
  const Homework({Key? key}) : super(key: key);

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        child: Container(
                          height: width*0.35,
                          width: width*0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.175),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width:10),
                      Container(
                        child: Column(
                          children: [
                            Text("Martin Alex",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            //SizedBox(height:5),
                            Text('I am a Product Manager',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                                width: width-30-width*0.35-10,
                                child: Text(
                                  'Bio',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
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
                        },
                        child: Text(
                          'Connect',
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: width*0.112, width: width*0.112, child: Image(image: AssetImage('assets/otherProfile/restrict.png'))),
                      SizedBox(width: 20,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('This account is private.',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            Text('Connect to this account to view its profile.',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Suggested For You',
                        //textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text('View All',
                        //textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 210,
                    width: width-30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        SuggestionCard(),
                        SizedBox(width: 15),
                        SuggestionCard(),
                        SizedBox(width: 15),
                        SuggestionCard(),
                        SizedBox(width: 15),
                        SuggestionCard(),
                        SizedBox(width: 15),
                        SuggestionCard(),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}










class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
        height: 210,
        width: width*0.43,
        //color: Colors.blue,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                //padding: EdgeInsets.all(5),
                height: 193,
                width: width*0.43,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                // child: Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: [
                //         IconButton(onPressed: (){}, icon: Icon(Icons.close, size: width*0.0153, color: Colors.white)),
                //       ],
                //     ),
                //     ClipRRect(
                //       child: Container(
                //         height: width*0.26,
                //         width: width*0.26,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(width*0.13),
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 157,
                      left: width*0.34,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.close, size: 12, color: Colors.white)),
                    ),
                    Positioned(
                      top: 20,
                      left: width*.43/5,
                      child:     ClipRRect(
                        child: Container(
                          height: width*0.26,
                          width: width*0.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.13),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30+width*0.26,
                      left: width*.43/5+15,
                      child: Text(
                        'Alex Den',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.4),
                  //     blurRadius: 4,
                  //     spreadRadius: 0,
                  //     offset: Offset(
                  //       0,
                  //       5,
                  //     ),
                  //   )
                  // ]
                ),
                child: SizedBox(
                  width: width*0.4,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Color(0xff5D73C3),
                      primary: Colors.red.withOpacity(0),
                      shadowColor: Colors.black,

                    ),
                    onPressed: () {
                    },
                    child: Text(
                      'Connect',
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
            ),
          ],
        )
    );
  }
}