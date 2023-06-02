
import 'dart:ui';

import 'package:flutter/material.dart';

class CreateCVTextfield extends StatelessWidget {
  const CreateCVTextfield({Key? key,required this.width,required this.text}) : super(key: key);

  final double width;
  final String text;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: width,
        height: 27,
        decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.75)),
        borderRadius: BorderRadius.circular(15),),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.white.withOpacity(0.18)),
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(.3),
                          Colors.white.withOpacity(0.02),
                        ]
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 3,
                    sigmaX: 3,
                  ),
                  child:Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Center(
                            child: Text(
                                text,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 11
                              ),
                            )),
                      ),
                      SizedBox(
                        width: width*.42,
                        height: 27,
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(

                              contentPadding: EdgeInsets.symmetric(vertical:12.5),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                              ),
                            ),
                            maxLines: 1,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.white,
                                fontSize: 11
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            )

        ),
      ),
    );
  }
}
