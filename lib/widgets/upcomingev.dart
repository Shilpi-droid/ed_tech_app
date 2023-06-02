import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';

class UpcomingEvent extends StatelessWidget {
  final String logoImage;
  final String heading;
  final String description;
  final String status;
  final String dayDate;
  final String time;
  final String eventImage;

  UpcomingEvent({
    required this.logoImage,
    required this.heading,
    required this.description,
    required this.status,
    required this.dayDate,
    required this.time,
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
                        Text(
                          status,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          dayDate,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            //fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          time,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                        ),
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

