import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Commcat extends StatelessWidget {
  final String image, text;
  const Commcat({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 115,
        width: 85,
        child: Column(
          children: [
            Container(
                height: 85,
                width: 85,
                child: Image(image: AssetImage(image), fit: BoxFit.fill)
            ),
            SizedBox(height: 5,),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        )
    );
  }
}
