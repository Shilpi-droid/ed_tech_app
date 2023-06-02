
import 'package:flutter/material.dart';

class NotificationVector extends StatelessWidget {
  const NotificationVector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Image.asset('assets/elements/not2.png',scale: .87,),
          Positioned(
              left: 10,
              top: 0,
              child: Image.asset('assets/elements/not1.png',scale: .89,)),
        ],
      ),
    );
  }
}
