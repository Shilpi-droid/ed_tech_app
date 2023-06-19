import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/pages/practicepopup.dart';

import '../widgets/categories.dart';

class TakeTest extends StatefulWidget {
  const TakeTest({super.key});

  @override
  State<TakeTest> createState() => _TakeTestState();
}

class _TakeTestState extends State<TakeTest> {
  @override
  Widget build(BuildContext context) {
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
                    SizedBox(height: 10),
                    Text(
                      'Digital Marketing: Advance Level',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Topics: Introduction to Digital Marketing, SEO Optimization, Introduction to CRM, Email Marketing, Competitor and Website Analysis, Market Research  & Niche Potential,Content Creation, Management  & Promotion, Introduction to Web Analytics.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                      indent: 0,
                      endIndent: 10,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.list_alt_rounded, color: Colors.white, size: 20),
                        SizedBox(width: 10),
                        Text(
                          '15 Multiple Choice Questions',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.access_time_filled_rounded, color: Colors.white, size: 20),
                        SizedBox(width: 10),
                        Text(
                          '1.5 minutes per question',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.bar_chart_rounded, color: Colors.white, size: 20),
                        SizedBox(width: 10),
                        Text(
                          'Score in the top 30% to earn a badge',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                      indent: 0,
                      endIndent: 10,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Before You Start',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\u2000 You must complete this assessment in one session-make sure your internet is reliable.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\u2000 If you don’t earn a badge this time, you can retake this assessment once more.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\u2000 We won’t show your results to anyone without your permission.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              primary: Colors.red.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                  side: BorderSide(color: Colors.white)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  PracticePopup()),
                              );
                            },
                            child: Text(
                              'Practice',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
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
                            width: 160,
                            height: 52,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0xff5D73C3),
                                primary: Colors.red.withOpacity(0),
                                shadowColor: Colors.black,

                              ),
                              onPressed: () {  },
                              child: Text(
                                'Start',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
