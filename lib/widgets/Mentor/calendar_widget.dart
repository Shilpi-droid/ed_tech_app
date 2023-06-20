
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
   CalendarWidget({Key? key,required this.startDate,required this.endDate}) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;

  TextStyle textStyle=TextStyle(
      fontSize: 20.0,
      color: Colors.white,
      fontWeight: FontWeight.bold
  );

  BoxDecoration boxDecoration=BoxDecoration(
      shape: BoxShape.circle,
      color: Color(0xff5F6097),
      border: Border.all(color: Colors.white,width: 3)
  );
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*.05),
      child: Column(
        children: [
          TableCalendar(
            calendarFormat: _calendarFormat,
            focusedDay: _focusedDay,
            firstDay: startDate,
            lastDay: endDate,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            rangeStartDay: startDate,
            rangeEndDay: endDate,
            rangeSelectionMode: _rangeSelectionMode,
            onDaySelected: (selectedDay, focusedDay) {
              // setState(() {
              //   _selectedDay = selectedDay;
              //   _focusedDay = focusedDay;
              //   _rangeSelectionMode = RangeSelectionMode.toggledOff;
              // });
            },
            onRangeSelected: (startDay, endDay, focusedDay) {
              // setState(() {
              //   _selectedDay = null;
              //   _focusedDay = focusedDay;
              //   _rangeSelectionMode = RangeSelectionMode.toggledOn;
              // });
            },
            daysOfWeekHeight: 35,
            headerStyle: HeaderStyle(
              titleCentered: true,
              titleTextStyle: textStyle,
              formatButtonVisible: false,
              leftChevronIcon: Icon(Icons.chevron_left,color: Colors.white,size: 30,),
              rightChevronIcon: Icon(Icons.chevron_right,color: Colors.white,size: 30,),
            ),

            daysOfWeekStyle:DaysOfWeekStyle(
                dowTextFormatter:  (day, locale) {
                  final weekdayAbbreviation = DateFormat.E(locale).format(day);
                  return weekdayAbbreviation.substring(0, 1);
                },
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.white,
                            width: 2
                        )
                    )
                ),
                weekdayStyle: textStyle,
                weekendStyle: textStyle
            ) ,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: false,
              defaultTextStyle: textStyle,
              disabledTextStyle:textStyle,
              withinRangeTextStyle:textStyle,
              outsideTextStyle: textStyle,
              selectedTextStyle: textStyle,
              rangeStartTextStyle:textStyle,
              rangeEndTextStyle:textStyle,
              selectedDecoration: BoxDecoration(color: Colors.transparent),
              rangeStartDecoration: boxDecoration,
              rangeEndDecoration: boxDecoration,
              rangeHighlightColor: Color(0xff5F6097),
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                  color: Color(0xff5F6097)
                ),
              ),
              SizedBox(width: 7,),
              Text("Schedule",style: TextStyle(color: Colors.white,fontSize: 15),)
            ],
          )
        ],
      ),
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
