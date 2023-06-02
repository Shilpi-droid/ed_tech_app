
import 'dart:ui';

import 'package:flutter/material.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({Key? key,required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child:
        Stack(
          children: [
            Container(
              width: width*.7,
              height: height*.07,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white.withOpacity(0.18)),
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(.4),
                      Colors.white.withOpacity(0.04),]
                ),
              ),
              child: Center(
                child: Text(text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaY: 3,
                sigmaX: 3,
              ),
            ),

          ],
        )

    );
  }
}
