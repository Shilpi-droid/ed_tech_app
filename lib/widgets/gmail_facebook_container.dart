
import 'dart:ui';

import 'package:flutter/material.dart';

class GmailFacebookContainer extends StatelessWidget {
  const GmailFacebookContainer({Key? key,required this.isGmail,required this.height,required this.width}) : super(key: key);

  final isGmail;
  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: width,
        height: height,
        color: Colors.transparent,
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
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(0.08),
                      ]
                  ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black38,
                //     blurRadius: 12,
                //     offset: Offset(
                //       -3.0, // Move to right 10  horizontally
                //       5.0, // Move to bottom 10 Vertically
                //     ),)
                // ],
              ),
            ),
            BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:Container(
                  child: Row(
                    //mainAxisAlignment: isGmail?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50,),
                      SizedBox(width: 20,),
                        Image(image: AssetImage(isGmail?"assets/onboarding/gmail.png":"assets/onboarding/fb.png"),),
                      SizedBox(width:14,),
                      Text(
                        isGmail?"Login with Gmail":"Login with Facebook",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70
                        ),
                      ),
                    ],
                  ),
                )

            ),
          ],
        ),
      ),
    );
  }
}

