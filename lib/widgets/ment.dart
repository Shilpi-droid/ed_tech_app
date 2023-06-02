import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';

class Mentorees extends StatelessWidget {
  final String name, post, image;
  const Mentorees({Key? key, required this.name, required this.post, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119,
      width: 92,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 31),
              CardUI(
                  height: 88,
                  width: 92,
                  child: Column(
                    children: [
                      SizedBox(height: 24),
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        post,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  )
              ),

      ],
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: SizedBox.square(
              dimension: 63,
              child: Image(
                image: AssetImage(image),
              ),
            ),
          )
        ],
      ),
    );
  }
}

