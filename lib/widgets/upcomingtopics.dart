import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';

class UpcomingTopics extends StatelessWidget {
  final String topic, author, date;
  const UpcomingTopics({Key? key, required this.topic , required this.author, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardUI(
        height: 107,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topic,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 5),
            Text(
              author,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Icon(Icons.calendar_today_rounded, color: Colors.white,size: 24),
                ),
                SizedBox(width: 4),
                Text(
                  date,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    //fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}
