
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../widgets/Mentor/calendar_widget.dart';
import '../../widgets/Mentor/duration_widget.dart';



class MentorSchedule extends StatefulWidget {
  const MentorSchedule({Key? key,required this.startDate,required this.endDate}) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;
  @override
  State<MentorSchedule> createState() => _MentorScheduleState();
}

class _MentorScheduleState extends State<MentorSchedule> {
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
                        "Select Dates",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: height*.05,),
                DurationWidget(startDate: widget.startDate,endDate: widget.endDate,),
                SizedBox(height: height*.1,),
                Container(
                  height: height*.72,
                  width: width,
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black38,
                    //     blurRadius: 20.0,
                    //     spreadRadius: -1.0, // Modify this value to negative
                    //     offset: Offset(0.0, 0.0),
                    //   ),
                    // ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border:Border.all(color: Colors.white.withOpacity(0.18)),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45),
                                topRight: Radius.circular(45),
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
                            child:Column(
                              children: [
                                SizedBox(height: height*.02,),
                                CalendarWidget(startDate: widget.startDate,endDate: widget.endDate,),
                                SizedBox(height: height*.03,),
                                Container(
                                  height: height*.05,
                                  width: width*.35 ,
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
                                  child: Center(child: Text("Apply Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                                )
                              ],
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
