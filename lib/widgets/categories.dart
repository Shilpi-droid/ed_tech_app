import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  Categories extends StatelessWidget {
  final String text;

  Categories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      alignment: Alignment.center,
      child: Container(
        height:45,
        width:120,
        decoration: BoxDecoration(
          color: Color(0xff5D73C3),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 5,
              //blurStyle: BlurStyle.outer,
              offset: Offset(0.0,5.0),
            )
          ]
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              //fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class ConnectBtn extends StatelessWidget {
  final String text;

  ConnectBtn({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.center,
      child: Container(
        height:35,
        width:80,
        decoration: BoxDecoration(
            color: Color(0xff5D73C3),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 5,
                //blurStyle: BlurStyle.outer,
                offset: Offset(0.0,5.0),
              )
            ]
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              //fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class ConnectBtn2 extends StatelessWidget {
  final String text;

  ConnectBtn2({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.center,
      child: Container(
        height:30,
        width:78,
        decoration: BoxDecoration(
            color: Color(0xff5D73C3),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 5,
                //blurStyle: BlurStyle.outer,
                offset: Offset(0.0,5.0),
              )
            ]
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              //fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class TransButton extends StatelessWidget {
  final String text;

  TransButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 16,
          width: 40,
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
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color:Colors.white, width: 0.4),
// boxShadow: [
//   BoxShadow(
//     color: Colors.grey.withOpacity(0.2),
//     blurRadius: 3.0,
//     spreadRadius: 2.0,
//   ),
// ],
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                color: Colors.black,
//fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );

  }
}

