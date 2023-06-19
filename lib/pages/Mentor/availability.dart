
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skido/pages/Mentor/utils.dart';

import 'package:table_calendar/table_calendar.dart';

import 'event_calendar.dart';

class Availability extends StatefulWidget {
  const Availability({Key? key}) : super(key: key);

  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {

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


//  DateTime _selectedDay=DateTime.now();
  late Map<DateTime, List<Event>> _events;


  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    // _events = {
    //   DateTime(2023, 6, 15): [
    //     Event('Event 1', DateTime(2023, 6, 15)),
    //     Event('Event 2', DateTime(2023, 6, 15)),
    //   ],
    //   DateTime(2023, 6, 18): [
    //     Event('Event 3', DateTime(2023, 6, 18)),
    //   ],
    // };
  }

  List<Event> _getEventsForDay(DateTime day) {
    return _events[day] ?? [];
  }


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/elements/backg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
               ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:width*.05),
                child: Text("Availability",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
              ),
                // CalendarWidget2()
                // SizedBox(height: height*.03,),

                Container(
                  height: height*.9,
                  padding: EdgeInsets.symmetric(horizontal: width*.05),
                  child: TableEventsExample(),
                ),
                Column(
                  children: [

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}










































class CalendarWidget2 extends StatefulWidget {
  @override
  _CalendarWidget2State createState() => _CalendarWidget2State();
}

class _CalendarWidget2State extends State<CalendarWidget2> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  // void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  //   /// The argument value will return the changed date as [DateTime] when the
  //   /// widget [SfDateRangeSelectionMode] set as single.
  //   ///
  //   /// The argument value will return the changed dates as [List<DateTime>]
  //   /// when the widget [SfDateRangeSelectionMode] set as multiple.
  //   ///
  //   /// The argument value will return the changed range as [PickerDateRange]
  //   /// when the widget [SfDateRangeSelectionMode] set as range.
  //   ///
  //   /// The argument value will return the changed ranges as
  //   /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
  //   /// multi range.
  //   setState(() {
  //     if (args.value is PickerDateRange) {
  //       _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
  //       // ignore: lines_longer_than_80_chars
  //           ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
  //     } else if (args.value is DateTime) {
  //       _selectedDate = args.value.toString();
  //     } else if (args.value is List<DateTime>) {
  //       _dateCount = args.value.length.toString();
  //     } else {
  //       _rangeCount = args.value.length.toString();
  //     }
  //   });
  // }
  List<DateTime> selectedDates = [
    DateTime.now().subtract(const Duration(days: 4)),
    DateTime.now().add(const Duration(days: 4)),
    DateTime.now().subtract(const Duration(days: 9)),
    DateTime.now().add(const Duration(days: 9)),
  ];

  @override
  Widget build(BuildContext context) {

    return Column();
    //   SfDateRangePicker(
    //  // onSelectionChanged: _onSelectionChanged,
    //   initialSelectedDates: selectedDates,
    //   selectionMode: DateRangePickerSelectionMode.single,
    //   // onSelectionChanged: ,
    //   //initialSelectedDates: selectedDates
    //
    //   // initialSelectedRange: PickerDateRange(
    //   //     DateTime.now().subtract(const Duration(days: 4)),
    //   //     DateTime.now().add(const Duration(days: 3))),
    // );
  }
}

