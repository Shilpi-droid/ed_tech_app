import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui.dart';
import 'categories.dart';

class ConnectCard extends StatelessWidget {
  final String text, image;
  const ConnectCard({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 92,
          width: 183,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 35),
              CardUI(
                  height: 84,
                  width: 147,
                  child: Row(
                    children: [
                      SizedBox(width: 37),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'New in Skido',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                          SizedBox(height: 8,),
                          ConnectBtn(text: 'Connect')
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
        ),
        Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              height: 92,
              width: 77,
              child: Image(
                image: AssetImage(image),
              ),
            )
        )
      ],
    );
  }
}
