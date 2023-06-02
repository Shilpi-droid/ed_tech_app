
import 'dart:ui';

import 'package:flutter/material.dart';

class SponsorTile extends StatelessWidget {
  const SponsorTile({Key? key,required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
          height: height*.05,
          width: width*.89,
          decoration: BoxDecoration(
          border:Border.all(color: Colors.white.withOpacity(0.4)),
      borderRadius: BorderRadius.circular(30),),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              children: [
                Container(
                  height: height*.06,
                  width: width*.89,
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.white.withOpacity(0.18)),
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(.25),
                          Colors.white.withOpacity(0.0),
                        ]
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 3,
                    sigmaX: 3,
                  ),
                  child:Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Text(
                            text,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Motserrat',
                                decoration: TextDecoration.none
                            ),
                          ),
                          Positioned(
                            left: width*.4,
                            child: Container(
                              width: width*.45,
                              color: Colors.transparent,
                              child: Center(
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),
                                  cursorColor: Colors.white70,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent, // Set to transparent
                                        width: 0, // Set to 0 width
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(vertical: 7.5),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )

        ),
      ),
    );
  }
}
