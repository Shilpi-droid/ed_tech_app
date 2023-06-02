import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Overlap extends StatefulWidget {
  const Overlap({super.key});

  @override
  State<Overlap> createState() => _OverlapState();
}

class _OverlapState extends State<Overlap> {
  List RandomImages = [
    'assets/elements/over1.png',
    'assets/elements/over2.png',
    'assets/elements/over3.png',
    'assets/elements/over4.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < RandomImages.length; i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0),
                  child: Align(
                      widthFactor: 0.7,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                            RandomImages[i],
                          ),
                        ),
                      )),
                ),
              Align(
                  widthFactor: 0.7,
                  child: ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.transparent,
                          child: Text(
                            '+9',
                            //textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              )
            ],
          ),

          // SizedBox(
          //   width: 20,
          // ),
          // CircleAvatar(
          //
          //   backgroundColor: Colors.grey.shade200,
          //   radius: 12,
          //   child: Center(child: Icon(Icons.add)),
          // ),
        ],
      ),
    );
  }
}