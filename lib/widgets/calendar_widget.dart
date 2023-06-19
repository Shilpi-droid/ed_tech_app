
import 'dart:ui';

import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Calendar',
          style:
          TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Container(
              width: width*.2,
              height: height*.05,
              // color: Colors.blue,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.white.withOpacity(0.18)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(.5),
                                Colors.white.withOpacity(0.08),
                              ]
                          ),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaY: 3,
                          sigmaX: 3,
                        ),
                        child:Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                            ),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ),
                      )
                    ],
                  )

              ),
            ),
            SizedBox(width: width*.05,),
            Container(
              width: width*.35,
              height: height*.05,
              // color: Colors.blue,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.white.withOpacity(0.18)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(.5),
                                Colors.white.withOpacity(0.08),
                              ]
                          ),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaY: 3,
                          sigmaX: 3,
                        ),
                        child:Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                            ),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ),
                      )
                    ],
                  )

              ),
            ),
            SizedBox(width: width*.05,),
            Container(
              width: width*.25,
              height: height*.05,
              // color: Colors.blue,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border:Border.all(color: Colors.white.withOpacity(0.18)),
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(.5),
                                Colors.white.withOpacity(0.08),
                              ]
                          ),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaY: 3,
                          sigmaX: 3,
                        ),
                        child:Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                            ),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ),
                      )
                    ],
                  )

              ),
            ),
          ],
        )

      ],
    );
  }
}
