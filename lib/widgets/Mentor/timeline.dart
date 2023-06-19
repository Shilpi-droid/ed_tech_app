
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:skido/models/Experience.dart';


class TimelineWidget extends StatelessWidget {
  const TimelineWidget({Key? key,required this.exp}) : super(key: key);

  final Experience exp;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: height*.16,
        width: width*.9,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 8),
              child: Column(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 2.5)
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: height*.12,
                      width: width*.02,

                      child: VerticalDashedLine(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: width*.08,
                top: height*.03,
                child: Container(
                  width: width*.8,
                  height: height*.1,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(exp.orgImg)
                        )
                      ),
                    ),
                    SizedBox(width: width*.03,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height*.01,),
                        Text(exp.jobTitle,
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19
                        ),),
                        Text(exp.org,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                        Text(exp.date,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),)
                      ],
                    )
                  ],),
                )
            )
          ],
        ),
      ),
    );
  }
}


class VerticalDashedLine extends StatelessWidget {
  const VerticalDashedLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 0,
        child: CustomPaint(
          painter: DashedLine(
            color: Colors.white,
            strokeWidth: 4,
            dashLength: 8,
            dashSpace: 4,
          ),
        ),
      ),
    );
  }
}


class DashedLine extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpace;

  DashedLine({
    required this.color,
    required this.strokeWidth,
    required this.dashLength,
    required this.dashSpace,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final dashPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.fill;

    final double totalSpace = dashLength + dashSpace;
    double startY = 0.0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashLength),
        dashPaint,
      );
      startY += totalSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

