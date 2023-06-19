
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skido/widgets/Mentor/duration_widget.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/Mentor/calendar_widget.dart';



class MentorAvailability extends StatefulWidget {
  const MentorAvailability({Key? key,required this.startDate,required this.endDate}) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;
  @override
  State<MentorAvailability> createState() => _MentorAvailabilityState();
}

class _MentorAvailabilityState extends State<MentorAvailability> {

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
            child:Column(
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
                        "Available Dates",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),),
                    ],
                  ),
                ),
                DurationWidget(startDate: widget.startDate,endDate: widget.endDate,),
                CalendarWidget(startDate: widget.startDate,endDate: widget.endDate,),
                SizedBox(height: height*.03,),
                Container(
                  height: height*.55,
                  width: width,
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
                                Center(child: Text("Contact Details",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                                SizedBox(height: height*.04,),
                                ContactTF(text: "Your Name:",height: height*.05,),
                                SizedBox(height: height*.02,),
                                ContactTF(text: "Email Id: ",height: height*.05),
                                SizedBox(height: height*.02,),
                                ContactTF(text: "Your Message:",height: height*.2,),
                                SizedBox(height: height*.02,),
                                Container(
                                  height: height*.05,
                                  width: width*.3 ,
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
                                  child: Center(child: Text("Send",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
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


class ContactTF extends StatelessWidget {
  const ContactTF({Key? key,required this.text,required this.height}) : super(key: key);

  final String text;
  final double height;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width*.8,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Container(
                // width: width*.8,
                // height: height,
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
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
                      contentPadding: EdgeInsets.symmetric(horizontal: width*.02,vertical: height*.15),
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

