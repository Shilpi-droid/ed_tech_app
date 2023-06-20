import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'buttons.dart';

class SharedProj extends StatelessWidget {
  final String image, heading, descp;
  const SharedProj({Key? key, required this.image, required this.heading, required this.descp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 220,
          width: 140,
          padding: EdgeInsets.all(4),
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
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(color:Colors.white, width: 0.4),
          ),
          child: Column(
            children: [
              SizedBox(height: 3),
              Text(
                heading,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 6),
              Text(
                descp,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                ),
              ),
              SizedBox(height: 6),
              Container(
                width: 133,
                height: 70,
                child: Stack(
                  children: [
                    Center(child: Image(image: AssetImage(image),fit: BoxFit.fitHeight,)),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        height: 18,
                        width: 18,
                        child: Image(
                          image: AssetImage('assets/elements/playb.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 6),
              TransPButton(text: 'More Details', height: 20, width: 75, fsize: 8,),
              SizedBox(height: 6),
              TransPButton(text: 'Project Guide', height: 20, width: 75, fsize: 8,),
            ],
          ),
        ),
      ),
    );
  }
}
