
import 'dart:ui';

import 'package:day_night_time_picker/day_night_time_picker.dart';
// import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
// import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../MentorDates/available_dates.dart';

class AvailableTime extends StatefulWidget {
  const AvailableTime({Key? key}) : super(key: key);

  @override
  State<AvailableTime> createState() => _AvailableTimeState();
}

class _AvailableTimeState extends State<AvailableTime> {
  Time _time1 = Time(hour: 11, minute: 30, second: 20);
  Time _time2 = Time(hour: 12, minute: 30, second: 20);
  bool iosStyle = false;

  void onStartTimeChanged(Time newTime) {
    setState(() {
      _time1 = newTime;
    });
  }
  void onEndTimeChanged(Time newTime) {
    setState(() {
      _time2 = newTime;
    });
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
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.close,color: Colors.white,)
                      ),
                      Text(
                        "Available Online",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: height*.01,),
                TimeDurationWidget(startTime:_time1,endTime:_time2),
                SizedBox(height: height*.03,),
                Row(
                  children: [
                    SizedBox(width: width*.24,),
                    Container(
                      width: width*.7,
                      height: height*.2,

                      decoration: BoxDecoration(
                          // color: Colors.yellow,
                        image: DecorationImage(
                          image: AssetImage("assets/MentorPage/availableonline_img.png"),
                              fit:BoxFit.contain
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*.03,),
                Container(
                  height: height*.72,
                  width: width,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border:Border.all(color: Colors.white.withOpacity(0.18)),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white.withOpacity(.5),
                                    Colors.white.withOpacity(0.08),
                                  ]
                              ),

                            ),
                          ),
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaY: 3,
                              sigmaX: 3,
                            ),
                            child:SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  SizedBox(height: height*.02,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: width*.05,vertical: height*.01),
                                        child: Text("Start Time",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: width*.1,vertical: height*.01),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color(0xff50518F),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              showPicker(
                                                height: height*.47,
                                                displayHeader: true,
                                                borderRadius: 20,
                                                blurredBackground: true,
                                                accentColor: Color(0xff50518F),
                                                sunAsset: Image.asset("assets/MentorPage/sun.png",scale: 5,),
                                                moonAsset: Image.asset("assets/MentorPage/moon.png",scale: 5,),
                                                showSecondSelector: false,
                                                context: context,
                                                value: _time1,
                                                onChange: onStartTimeChanged,
                                                minuteInterval: TimePickerInterval.FIVE,
                                                // Optional onChange to receive value as DateTime
                                                onChangeDateTime: (DateTime dateTime) {
                                                  // print(dateTime);
                                                  debugPrint("[debug datetime]:  $dateTime");
                                                },
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            "Select Start Time",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          "${_time1.hour}:${_time1.minute}${_time1.period.name}"
                                              .toUpperCase(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 20,color: Colors.white)
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: width*.05),
                                        child: Text("End Time",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: width*.1,vertical: height*.01),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color(0xff50518F),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              showPicker(
                                                themeData: ThemeData(
                                                  primaryColor: Color(0xff50518F), // Set the primary color
                                                ),

                                                height: height*.47,
                                                displayHeader: true,
                                                sunAsset: Image.asset("assets/MentorPage/sun.png",scale: 5,),
                                                moonAsset: Image.asset("assets/MentorPage/moon.png",scale: 5,),
                                                borderRadius: 20,
                                                blurredBackground: true,
                                                accentColor: Color(0xff50518F),
                                                showSecondSelector: false,
                                                context: context,
                                                value: _time2,
                                                onChange: onEndTimeChanged,
                                                minuteInterval: TimePickerInterval.FIVE,
                                                // Optional onChange to receive value as DateTime
                                                onChangeDateTime: (DateTime dateTime) {
                                                  // print(dateTime);
                                                  debugPrint("[debug datetime]:  $dateTime");
                                                },
                                              ),
                                            );
                                          },
                                          child:  Text(
                                            "Select End Time",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                            "${_time2.hour}:${_time2.minute}${_time2.period.name}"
                                                .toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20,color: Colors.white)
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height*.03,),
                                  Align(alignment:Alignment.center,child: AvailableTimeTF(text: 'Name',)),
                                  SizedBox(height: height*.03,),
                                  Align(alignment:Alignment.center,child: AvailableTimeTF(text: 'Aspirant Id')),
                                  SizedBox(height: height*.03,),
                                  Container(
                                    height: height*.05,
                                    width: width*.4 ,
                                    decoration: BoxDecoration(
                                      color: Color(0xff5D73C3),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 20.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            2.0, // Move to right 5  horizontally
                                            10.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: Center(child: Text("Schedule a meet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      )

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}












String formatTime(Time time) {
  final dateTime = DateTime(0, 1, 1, time.hour, time.minute, time.second);
  final formattedTime = DateFormat.jm().format(dateTime);
  return formattedTime;
}

String calculateTimeDifference(Time startTime, Time endTime) {
  final startDateTime = DateTime(0, 1, 1, startTime.hour, startTime.minute, startTime.second);
  final endDateTime = DateTime(0, 1, 1, endTime.hour, endTime.minute, endTime.second);
  final difference = endDateTime.difference(startDateTime);

  final hours = difference.inHours;
  final minutes = difference.inMinutes.remainder(60);


  return minutes==0?'$hours hrs':'$hours hrs $minutes mins';
}










class TimeDurationWidget extends StatelessWidget {
  TimeDurationWidget({Key? key,required this.startTime,required this.endTime}) : super(key: key);

  Time startTime;
  Time endTime;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          Text(
            "Start Time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          Text(
            formatTime(startTime),
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),

        ],),
        Column(children: [
          Container(
            height: height*.04,
            width: width*.3,
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
                            calculateTimeDifference(startTime,endTime),
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
            "End Time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          Text(
            formatTime(endTime),
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),

        ],),
      ],
    );
  }
}



class AvailableTimeTF extends StatelessWidget {
  const AvailableTimeTF({Key? key,required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
      width: width*.5,
      height: height*.06,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                // width: width*.8,
                // height: height,
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(0.08),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 3,
                    sigmaX: 3,
                  ),
                  child:TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: width*.02,vertical: height*.02),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      hintText: text,

                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      hintMaxLines: 1,

                    ),
                    maxLines:4,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  )
              )
            ],
          )

      ),
    );
  }
}