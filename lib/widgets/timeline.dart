import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';

class Timeline extends StatelessWidget {
  final String date;
  final String text;

  Timeline({required this.date, required this.text});

  @override
  Widget build(BuildContext context) {
    return CardUI(
        height: 131,
        width: 178,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                date,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    //fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}


//Container(
//       height:151,
//       width:178,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               date,
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 16.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: Colors.blue,
//                   fontSize: 16.0,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );