
import 'dart:ui';

import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return
      Container(
        height: height*.05,
        width: width*.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff5D73C3)
        ),
        child: Center(
          child: Text('Next',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
        ),
      );

  }
}
