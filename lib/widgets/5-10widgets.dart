import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CodingCourse510 extends StatelessWidget {
  final String image, heading, buttontxt, time, mrp;
  const CodingCourse510({super.key, required this.image, required this.heading, required this.buttontxt, required this.time, required this.mrp});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 115,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            height: 125,
            width: 115,
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
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:15,
                        width:58,
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
                              fontWeight: FontWeight.w600,
                              fontSize: 5,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_later_rounded, size: 10, color: Colors.white,),
                          Text("$time+ Hrs",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 5,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.price_change_rounded, size: 10, color: Colors.white,),
                      Text("MRP.$mrp/-",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 5,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransPButtonDrop extends StatelessWidget {
  final String text;
  final double height, width;
  const TransPButtonDrop({Key? key, required this.text, required this.height, required this.width,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
            height: height,
            width: width,
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
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color:Colors.white, width: 0.4),
            ),
            child : Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, size: 10, color: Colors.white,)
                ],
              ),
            )
        ),
      ),
    );
  }
}

class Test1510 extends StatelessWidget {
  final String text, name, role, address, image;
  const Test1510({super.key, required this.text, required this.name, required this.role, required this.address, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 220,
      child: Stack(
        children: [
          Container(
            height: 120,
            width: 220,
            child: Column(
              children: [
                SizedBox(height: 17),
                Row(
                  children: [
                    SizedBox(width: 26),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Container(
                          height: 103,
                          width: 179,
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
                                    text,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '$name | $role, $address',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 8,
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
                )
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              width: 41,
              height: 117,
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrivateTut extends StatelessWidget {
  final image, descp;
  const PrivateTut({super.key, required this.image, required this.descp});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      width: 292,
      child: Stack(
        children: [
          Container(
            height: 151,
            width: 292,
            child: Column(
              children: [
                SizedBox(height: 33),
                Row(
                  children: [
                    SizedBox(width: 24),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Container(
                          height: 85,
                          width: 268,
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
                                    descp,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
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
            alignment: AlignmentDirectional.topStart,
            child: Container(
              width: 57,
              height: 131,
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Test2510 extends StatelessWidget {
  final String text, name, classno, school, image;
  const Test2510({super.key, required this.text, required this.name, required this.classno, required this.school, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 212,
      child: Stack(
        children: [
          Container(
            height: 115,
            width: 212,
            // color: Colors.red,
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Container(
                            height: 105,
                            width: 182,
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
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 35, ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 125,
                                        child: Text(
                                          text,
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(height: 25),
                                      Container(
                                        width: 125,
                                        child: Text(
                                          '$name | Class $classno th | $school',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 96,
                height: 80,
                // color: Colors.blue,
                child: Image(
                  image: AssetImage(image),
                ),
              )
          ),
        ],
      ),
    );
  }
}

class Test3510 extends StatelessWidget {
  final String descp, image, name, classno, school;
  const Test3510({super.key, required this.descp, required this.image, required this.name, required this.classno, required this.school });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 210,
      // color: Colors.red,
      child: Stack(
        children: [
          Container(
            height: 135,
            width: 210,
            child: Column(
              children: [
                SizedBox(height: 9),
                Row(
                  children: [
                    SizedBox(width: 50),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Container(
                          height: 108,
                          width: 158,
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
                                    descp,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '$name | Class $classno th, $school',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 8,
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
                )
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              width: 70,
              height: 135,
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UpcEve extends StatelessWidget {
  final String image, heading, desc, day, date, time;
  const UpcEve({super.key, required this.desc, required this.image, required this.heading, required this.date, required this.day, required this.time});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 160,
          width: 97,
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
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Container(
                      height: 66,
                      width: 115,
                      // color: Colors.red,
                      child: Image(image: AssetImage(image), fit: BoxFit.fitHeight,)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(heading,
                        style: GoogleFonts.montserrat(
                          fontSize: 6,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_circle_right,
                        size: 8 ,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:4, right: 4),
                    child: Text(
                      desc,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 5,
                          color: Colors.white
                      ),
                    ),
                  ),
                  Text(
                    '\n\n$day | $date\n\n$time',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 5,
                        color: Colors.white
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}

class ReadingMat extends StatelessWidget {
  final String image, button;
  const ReadingMat({super.key, required this.image, required this.button});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 135,
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
          ),
          SizedBox(height: 7),
          Container(
            height: 30,
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
                  button,
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
    );
  }
}





//'SKIDO has helped me in many ways. Firstly, it organised mock GD & PI sessions that strengthened.....'
// '–Supriya Banthia | Class 6th | ABC School'
//'assets/5-10/5-10test2_1.png'

