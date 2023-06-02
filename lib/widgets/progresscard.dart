// import 'package:flutter/material.dart';
//
// class CustomCard extends StatelessWidget {
//   final String title;
//   final int marksObtained;
//   final int marksTotal;
//   final String courseName;
//
//   CustomCard({
//     required this.title,
//     required this.marksObtained,
//     required this.marksTotal,
//     required this.courseName,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     double progress = marksObtained / marksTotal;
//     final height=MediaQuery.of(context).size.height;
//     final width=MediaQuery.of(context).size.width;
//
//
//     return Container(
//
//       height: 205,
//       width: width-30,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             blurRadius: 3.0,
//             spreadRadius: 2.0,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18.0,
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//           Center(
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 SizedBox(
//                   height: 100.0,
//                   width: 100.0,
//                   child: CircularProgressIndicator(
//                     value: progress,
//                     strokeWidth: 8.0,
//                     backgroundColor: Colors.grey.withOpacity(0.2),
//                     valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//                   ),
//                 ),
//                 Text(
//                   '${(progress * 100).toInt()}%',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 16.0),
//           Text(
//             'Legend: $courseName',
//             style: TextStyle(
//               fontStyle: FontStyle.italic,
//               fontSize: 14.0,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/ui.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final int marksObtained;
  final int marksTotal;
  final String courseName;

  CustomCard({
    required this.title,
    required this.marksObtained,
    required this.marksTotal,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    double progress = marksObtained / marksTotal;
    final width = MediaQuery.of(context).size.width;
    return CardUI(
    height: 250, width: width-30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  //fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 128,
                    width: 128,
                    child: Image(
                      image: AssetImage('assets/elements/circle.png'),
                    ),
                  ),
                  SizedBox(
                    height: 114.0,
                    width: 114.0,
                    child: CircularProgressIndicator(
                      value: 0.7,
                      strokeWidth: 8.0,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4C53EB)),
                    ),
                  ),
                  SizedBox(
                    height: 90.0,
                    width: 90.0,
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 8.0,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xff3EBCDA)),
                    ),
                  ),
                  Text(
                    '1284',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xff1D25E2),
                    ),
                  ),

                  // Text(
                  //   'from 2340',
                  //   style: GoogleFonts.montserrat(
                  //     fontWeight: FontWeight.w300,
                  //     fontSize: 20,
                  //     //color: Color(0xff1D25E2),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                    color: Color(0xff3EBCDA),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5),
                  child: Text(
                    courseName,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                    color: Color(0xff4C53EB),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5),
                  child: Text(
                    courseName,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
    );
  }
}
