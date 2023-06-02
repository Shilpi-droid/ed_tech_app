
import 'dart:ui';

import 'package:flutter/material.dart';

class GlassIcon extends StatelessWidget {
  const GlassIcon({
    Key? key,
    required this.icon,
    required this.size,
    required this.iconColor,
    required this.iconSize,
  }) : super(key: key);

  final IconData icon;
  final double size;
  final Color iconColor;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border:Border.all(color: Colors.white.withOpacity(0.18)),
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(.4),
                Colors.white.withOpacity(0.03),
              ]
          ),
        ),
        child: Icon(icon,color: iconColor,size: iconSize,),
      ),
    );
  }
}
