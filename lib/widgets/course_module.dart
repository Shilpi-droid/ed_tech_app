
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/widgets/play_widget.dart';


class CourseModule extends StatelessWidget {
  const CourseModule({
    Key? key,
    required this.index,
    required this.title,
    required this.percentage,
    required this.watchtime
  }) : super(key: key);

  final int index;
  final String title;
  final String watchtime;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: height*.09,
        width: width*.85,
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
                          Colors.white.withOpacity(0.04),
                        ]
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 3,
                    sigmaX: 3,
                  ),
                ),
                Positioned(
                  top: height*.015,
                    left: width*.05,
                    child: PlayWidget()
                ),
                Positioned(
                  top: height*.01,
                    left: width*.23,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "${index.toString()} - ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        )
                      ],
                    )
                ),
                Positioned(
                    top: height*.035,
                    left: width*.23,
                    child: Text(
                      watchtime,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    )
                ),
                Positioned(
                    top: height*.06,
                    left: width*.24,
                    child: Container(
                      width: width*.5,
                     height: 4,
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.white,
                          ),
                          FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: percentage*.01,
                            child: Container(
                              color: Color(0xff5D73C3),
                            ),
                          ),
                    ],
                  ),
                )
                )
              ],
            )

        ),
      ),
    );
  }
}
