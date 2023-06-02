import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories.dart';

class SkillBlogCard extends StatelessWidget {
  final String image, cname, desc;
  const SkillBlogCard({Key? key, required this.image, required this.cname, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 218,
          width: 170,
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
              SizedBox(height: 4),
              Text(
                cname,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    //fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    fontSize: 8,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ConnectBtn(text: 'Read Article')
            ],
          ),
        ),
      ),
    );
  }
}
