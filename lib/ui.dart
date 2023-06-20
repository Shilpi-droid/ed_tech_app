import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/widgets/categories.dart';

class CardUI extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const CardUI({Key? key, required this.height, required this.width, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(16.0),
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
          child: child,
        ),
      ),
    );
  }
}

class PlayCard extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const PlayCard({Key? key, required this.height, required this.width, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(0),
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
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color:Colors.white, width: 0.4),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     blurRadius: 3.0,
            //     spreadRadius: 2.0,
            //   ),
            // ],
          ),
          child: child,
        ),
      ),
    );
  }
}

class CourseCardUI extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const CourseCardUI({Key? key, required this.height, required this.width, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(43.5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(16.0),
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
            borderRadius: BorderRadius.circular(43.5),
            border: Border.all(color:Colors.white, width: 0.4),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     blurRadius: 3.0,
            //     spreadRadius: 2.0,
            //   ),
            // ],
          ),
          child: child,
        ),
      ),
    );
  }
}


class SearchCardUI extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const SearchCardUI({Key? key, required this.height, required this.width, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(16.0),
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
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(color:Colors.white, width: 0.4),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     blurRadius: 3.0,
            //     spreadRadius: 2.0,
            //   ),
            // ],
          ),
          child: child,
        ),
      ),
    );
  }
}


class CodingQuiz extends StatelessWidget {
  final String image, heading, buttontxt, grade, level;
  const CodingQuiz({Key? key, required this.image, required this.heading, required this.buttontxt, required this.grade, required this.level}) : super(key: key);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 220,
          width: 140,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            //color: Colors.white.withOpacity(0.3),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.white.withOpacity(0.1),
              ],
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2,0.8],
            ),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color:Colors.white, width: 0.4),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     blurRadius: 3.0,
            //     spreadRadius: 2.0,
            //   ),
            // ],
          ),
          child: Column(
            children: [
              Container(child: Image(image: AssetImage(image), fit: BoxFit.fill,)),
              SizedBox(height: 8),
              Text(
                heading,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Container(
                  height: 26,
                  alignment: Alignment.topLeft,
                  child: Container(
                    height:26,
                    width:40,
                    decoration: BoxDecoration(
                        color: Color(0xff52518E),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Colors.black26,
                        )
                    ),
                    child: Center(
                      child: Text(
                        buttontxt,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school_rounded, size: 12, color: Colors.white,),
                        SizedBox(width: 6),
                        Text(
                          'Grade: $grade',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.bar_chart, size: 12, color: Colors.white,),
                        SizedBox(width: 6),
                        Text(
                          level,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 22,
                alignment: Alignment.center,
                child: Container(
                  height:30,
                  width:85,
                  decoration: BoxDecoration(
                      color: Color(0xff5D73C3),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.black26,
                      )
                  ),
                  child: Center(
                    child: Text(
                      'Play Now',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedCourse extends StatelessWidget {
  final String image, heading, buttontxt, grade, level;
  const FeaturedCourse({Key? key, required this.image, required this.heading, required this.buttontxt, required this.grade, required this.level}) : super(key: key);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 190,
          width: 122,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            //color: Colors.white.withOpacity(0.3),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.white.withOpacity(0.1),
              ],
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2,0.8],
            ),
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color:Colors.white, width: 0.4),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     blurRadius: 3.0,
            //     spreadRadius: 2.0,
            //   ),
            // ],
          ),
          child: Column(
            children: [
              Container(child: Image(image: AssetImage(image), fit: BoxFit.fill,)),
              SizedBox(height: 3),
              Text(
                heading,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Container(
                  height: 16,
                  alignment: Alignment.topLeft,
                  child: TransButton(text: buttontxt),
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school_rounded, size: 12, color: Colors.white,),
                        SizedBox(width: 6),
                        Text(
                          'Grade: $grade',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.bar_chart, size: 12, color: Colors.white,),
                        SizedBox(width: 6),
                        Text(
                          level,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 22,
                alignment: Alignment.center,
                child: Container(
                  height:30,
                  width:85,
                  decoration: BoxDecoration(
                      color: Color(0xff5D73C3),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.black26,
                      )
                  ),
                  child: Center(
                    child: Text(
                      'Play Now',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



