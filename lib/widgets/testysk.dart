import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';
import 'categories.dart';

class TestSkillCard extends StatelessWidget {
  final String cname, rem;
  const TestSkillCard({Key? key, required this.cname, required this.rem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardUI(
        height: 140,
        width: 125,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cname,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              rem,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            ConnectBtn(text: 'Show more\nRoles')
          ],
        )
    );
  }
}
