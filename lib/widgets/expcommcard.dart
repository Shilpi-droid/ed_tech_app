import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/Communities.dart';
import '../ui.dart';
import 'overlappingcirc.dart';

class ExploreCommunityCard extends StatelessWidget {
  final Community community;
  const ExploreCommunityCard({Key? key, required this.community}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <String> pfps=[
      "assets/Community/expcom1.png",
      "assets/Community/expcom2.png",
      "assets/Community/expcom3.png",
      "assets/Community/expcom4.png",
    ];
    Random random = Random();
    String image=pfps[random.nextInt(pfps.length)];

    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return CardUI(
        height: height*.25,
        width: width*.42,
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
            SizedBox(
              width: width*.42,
              child: Text(
                community.name,
                //textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 12),
            Overlap(),
          ],
        )
    );
  }
}
