import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';
import 'overlappingcirc.dart';

class ExploreCommunityCard extends StatelessWidget {
  final String text, image;
  const ExploreCommunityCard({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardUI(
        height: 173,
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30.5,
              child: Image(
                image: AssetImage(image),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              //textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 14),
            Overlap(),
          ],
        )
    );
  }
}
