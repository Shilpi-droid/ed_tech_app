import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransPButton extends StatelessWidget {
  final String text;
  final double height, width, fsize;
  const TransPButton({Key? key, required this.text, required this.height, required this.width, required this.fsize}) : super(key: key);

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
            child : Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  fontSize: fsize,
                ),
              ),
            )
        ),
      ),
    );
  }
}
