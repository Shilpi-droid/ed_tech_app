import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/categories.dart';

class Ongoing extends StatelessWidget {
  final String logoImage;
  final String heading;
  final String description;
  final String eventImage;

  Ongoing({
    required this.logoImage,
    required this.heading,
    required this.description,
    required this.eventImage,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CardUI(
        height: 265,
        width: width-30,

        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  child: Image.asset(logoImage),
                ),
              ],
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            heading,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            description,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Categories(text: 'Apply Now')
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                        height: 140,
                        width: 140,
                        child: Image.asset(eventImage)
                    ),
                  ),
                ],
              ),
            ),
          ],
        )

    );
  }
}

