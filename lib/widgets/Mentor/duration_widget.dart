
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DurationWidget extends StatelessWidget {
  const DurationWidget({Key? key,required this.startDate,required this.endDate}) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          Text(
            "Start Date",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          Text(
            formatDateWithOrdinal(startDate),
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            DateFormat('EEEE').format(startDate),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,

            ),
          ),
        ],),
        Column(children: [
          Container(
            height: height*.04,
            width: width*.2,
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
                              Colors.white.withOpacity(.5),
                              Colors.white.withOpacity(0.01),
                            ]
                        ),
                      ),
                    ),
                    BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaY: 3,
                          sigmaX: 3,
                        ),
                        child:Center(
                          child: Text(
                            "${endDate.difference(startDate).inDays.toString()} days",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                    )
                  ],
                )

            ),
          )

        ],),
        Column(children: [
          Text(
            "End Date",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          Text(
            formatDateWithOrdinal(endDate),
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            DateFormat('EEEE').format(endDate),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,

            ),
          ),
        ],),
      ],
    );
  }
}

String formatDateWithOrdinal(DateTime dateTime) {
  String formattedDate = DateFormat('dd MMMM').format(dateTime);
  String formattedDateWithOrdinal = '${DateFormat('dd').format(dateTime)}${_getOrdinal(dateTime.day)} ${DateFormat('MMMM').format(dateTime)}';
  return formattedDateWithOrdinal;
}

String _getOrdinal(int day) {
  if (day >= 11 && day <= 13) {
    return 'th';
  }
  switch (day % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}
