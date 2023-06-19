import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/categories.dart';

class Division extends StatelessWidget {
  final String imageUrl;
  final String div;
  final String descp;

  Division({required this.imageUrl, required this.div, required this.descp});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:130,
      child: Stack(
        //alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              SizedBox(height:40),
              CardUI(
                height:120,
                width: 130,
                child: Container(
                  width: 120.0,  // Adjust the width as needed
                  height: 130.0,  // Adjust the height as needed
                  color: Colors.transparent,  // Adjust the color and opacity as needed
                  child:Column(
                    children: [
                      SizedBox(height:15),
                      Text(
                        div,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height:10),
                      Text(
                        descp,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Image.asset(
              imageUrl,
              //fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class Division1 extends StatelessWidget {
  final String imageUrl;
  final String div;
  final String bio;
  final String descp;

  Division1({required this.imageUrl, required this.div, required this.bio, required this.descp});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width:width-30,
      child: Stack(
        //alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              SizedBox(height:40),
              CardUI(
                height:140,
                width: width-30,
                child: Container(
                  width: width-30 , // Adjust the width as needed
                  height: 140,  // Adjust the height as needed
                  color: Colors.transparent,  // Adjust the color and opacity as needed
                  child:Column(
                    children: [
                      SizedBox(height:15),
                      Text(
                        div,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      //SizedBox(height:5),
                      Text(
                        bio,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height:10),
                      Text(
                        descp,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Image.asset(
              imageUrl,
              //fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class Testimonials extends StatelessWidget {
  final String imageUrl;
  final String div;
  final String descp;

  Testimonials({required this.imageUrl, required this.div, required this.descp});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width:width-30-185,
      child: Stack(
        //alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              SizedBox(height:20),
              CardUI(
                height:147,
                width: width-30-185,
                child: Container(
                  width: width-30-185 , // Adjust the width as needed
                  height: 147,  // Adjust the height as needed
                  color: Colors.transparent,  // Adjust the color and opacity as needed
                  child:Column(
                    children: [
                      SizedBox(height:15),
                      Text(
                        div,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      //SizedBox(height:5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 10, color: Colors.white),
                          SizedBox(width:2),
                          Icon(Icons.star, size: 10, color: Colors.white),
                          SizedBox(width:2),
                          Icon(Icons.star, size: 10, color: Colors.white),
                          SizedBox(width:2),
                          Icon(Icons.star, size: 10, color: Colors.white),
                          SizedBox(width:2),
                          Icon(Icons.star, size: 10, color: Colors.white),
                        ],
                      ),
                      SizedBox(height:10),
                      Text(
                        descp,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              height: 52,
              width: 52,
              child: Image.asset(
                imageUrl,
                //fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  final String imageUrl;
  final String div;
  final String descp;

  MentorCard({required this.imageUrl, required this.div, required this.descp});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width-30,
      child: Stack(
        //alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              SizedBox(height:20),
              CardUI(
                height:180,
                width: width-30,
                child: Container(
                  width: width-30,  // Adjust the width as needed
                  height: 180.0,  // Adjust the height as needed
                  color: Colors.transparent,  // Adjust the color and opacity as needed
                  child:Row(
                    children: [
                      SizedBox(width: width*0.35),
                      Column(
                        children: [
                          //SizedBox(height),
                          Text(
                            div,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height:10),
                          Container(
                            width: 190,
                            child: Text(
                              descp,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              height: 215,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCat extends StatelessWidget {
  final String cname;
  final String descp;

  CourseCat({required this.cname, required this.descp});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width:160,
      child: Stack(
        //alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              SizedBox(height:40),
              CardUI(
                height:116,
                width: 160,
                child: Container(
                  width: 160 , // Adjust the width as needed
                  height: 116,  // Adjust the height as needed
                  color: Colors.transparent,  // Adjust the color and opacity as needed
                  child:Column(
                    children: [
                      SizedBox(height:5),
                      Text(
                        "Description:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      //SizedBox(height:5),
                      Text(
                        descp,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 7,
                        ),
                      ),
                      SizedBox(height:5),
                      Text(
                        "Link",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Categories(text: cname),
          ),
        ],
      ),
    );
  }
}


// class TestimonCard extends StatelessWidget {
//   final String imageUrl;
//   final String name, role, address;
//   final String descp;
//
//   TestimonCard({required this.imageUrl, required this.name, required this.role, required this.address, required this.descp});
//
//   @override
//   Widget build(BuildContext context) {
//     final width=MediaQuery.of(context).size.width;
//     return Stack(
//       //alignment: Alignment.topCenter,
//       children: [
//         Container(
//           child: Row(
//             children: [
//               SizedBox(height:30),
//               CardUI(
//                 height:111,
//                 width: 160,
//                 child: Container(
//                   width: 160,  // Adjust the width as needed
//                   height: 100,  // Adjust the height as needed
//                   color: Colors.transparent,  // Adjust the color and opacity as needed
//                   child:Row(
//                     children: [
//                       //SizedBox(width: width*0.35),
//                       Column(
//                         children: [
//                           //SizedBox(height),
//                           Container(
//                             width: 100,
//                             child: Text(
//                               descp,
//                               textAlign: TextAlign.center,
//                               style: GoogleFonts.montserrat(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height:10),
//                           Text(
//                             '- $name | $role, $address',
//                             textAlign: TextAlign.center,
//                             style: GoogleFonts.montserrat(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w400,
//                               fontSize: 8,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Align(
//           alignment: AlignmentDirectional.topStart,
//           child: Container(
//             height: 117,
//             child: Image.asset(
//               imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }