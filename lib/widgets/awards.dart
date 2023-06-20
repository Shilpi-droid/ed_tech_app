import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';

class AwardCard extends StatelessWidget {
  final int currentLevelNo;
  final int totalNoOfLevels;

  AwardCard({
    required this.currentLevelNo,
    required this.totalNoOfLevels,
  });

  @override
  Widget build(BuildContext context) {
    double progress = currentLevelNo / totalNoOfLevels;
    final width=MediaQuery.of(context).size.width;

    return CardUI(
      height: 190, width: width-30,
        child:Column(
          children: [
            Text(
              'Awards',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                //fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      child: Image.asset('assets/elements/award1.png'), // Replace 'your_image.png' with the actual image asset path
                    ),
                  )
                ),
                SizedBox(width: 8.0),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Level',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '${totalNoOfLevels - currentLevelNo} lessons to the goal',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      LinearProgressIndicator(
                        minHeight: 10,
                        value: progress,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '$currentLevelNo/$totalNoOfLevels',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}

//Container(
//           height: 126,
//           width: width - 30,
//           padding: EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(8.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 blurRadius: 3.0,
//                 spreadRadius: 2.0,
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Text(
//                 'Awards',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18.0,
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Image.asset('assets/elements/award1.png'), // Replace 'your_image.png' with the actual image asset path
//                     ),
//                   ),
//                   SizedBox(width: 16.0),
//                   Expanded(
//                     flex: 2,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Level $currentLevelNo',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           '${totalNoOfLevels - currentLevelNo} lessons to the goal',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         SizedBox(height: 16.0),
//                         LinearProgressIndicator(
//                           value: progress,
//                           backgroundColor: Colors.grey.withOpacity(0.2),
//                           valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           '$currentLevelNo/$totalNoOfLevels',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),