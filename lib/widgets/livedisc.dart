import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';
import 'overlappingcirc.dart';

class LiveDiscussion extends StatelessWidget {
  final String topic, author;
  const LiveDiscussion({Key? key, required this.topic, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardUI(
        height: 152,
        width: 215,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 13,
                width: 37,
                child: Image(image: AssetImage('assets/elements/live.png'))
            ),
            SizedBox(height: 37,),
            Text(
              'Topic',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 8,
              ),
            ),
            SizedBox(height: 3),
            Text(
              topic,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'By $author',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 8,
              ),
            ),
            SizedBox(height: 5),
            Overlap(),
          ],
        )
    );
  }
}
