import 'dart:ui';

import 'package:flutter/material.dart';


import '../models/Course.dart';
import '../pages/payment_details_page.dart';
import 'checkout_button.dart';
import 'detail_page_widget.dart';


class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key,required this.index}) : super(key: key);

  final int index;
  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        DetailPageUI(index:widget.index),
        Opacity(
          opacity: 0.9,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),
        // Dialog content
        Positioned(
          top: height*.42,
          left: width*0.017,
          child: Container(
            width: width,
            height: height*.2,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Container(
                    width: width*.9,
                    height: height*.18,
                    color: Colors.transparent,
                    child: Stack(

                      children: [

                        Container(
                          decoration: BoxDecoration(
                            //border:Border.all(color: Colors.white.withOpacity(0.08)),
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(.5 ),
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

                        ),
                        Positioned(
                            child: Container(
                          height: height*.03    ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Color(0xff5F6097),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Course Details',
                                style: TextStyle(
                                    fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.none
                                ),
                              ),
                              Text('Course Qty.',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.none
                                ),
                              ),
                              Text('Course price',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ],
                          ),
                        )),
                        Positioned(
                          top: height*.035,
                            child: Container(
                              height: height*.03,
                              width: width*.95,

                              child: Row(

                                children: [
                                  SizedBox(width: width*.065,),
                                  Text(Course.courseList[widget.index].name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                  SizedBox(width: width*.2,),
                                  Text('01',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                  SizedBox(width:width*.17 ,),
                                  Text("Rs. ${Course.courseList[widget.index].price.toString()} /-",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            top: height*.12,
                            child: Container(
                              height: height*.03,
                              width: width*.95,

                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child:
                                      Text( "Total Price: ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                    ),

                                    Text( "Rs. ${Course.courseList[widget.index].price.toString()}/- ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat',
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    SizedBox(width: width*.15,),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => PaymentDetails(page: DetailPageUI(index:widget.index,),)),
                                        );
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Color(0xff5D73C3),
                                        ),

                                        child: Center(
                                          child: Text('Get the course',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Montserrat',
                                                  decoration: TextDecoration.none
                                              )),
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ))


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

