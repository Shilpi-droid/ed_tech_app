
import 'dart:ui';

import 'package:flutter/material.dart';



class UPIPage extends StatefulWidget {
  const UPIPage({Key? key,required this.page}) : super(key: key);

  final Widget page;
  @override
  State<UPIPage> createState() => _UPIPageState();
}

class _UPIPageState extends State<UPIPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        widget.page,
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
                           // border:Border.all(color: Colors.white.withOpacity(0.4)),
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

                        Container(
                          height: height*.032,
                          width: width*.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Color(0xff5F6097),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal:15,vertical: 3.2),
                            child: Text('UPI Payment',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.none
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: height*.18,

                          child:Row(children: [
                            Container(
                              width: width*.4,
                              color: Colors.transparent,
                              child: Column(children: [
                                SizedBox(height: height*.05,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,top: 0),
                                  child: Text('Enter UPI Id ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.none
                                  )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,top: 6),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    height: height*.027,
                                    width:135,
                                    child:
                                    Material(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Montserrat',
                                              decoration: TextDecoration.none
                                          ),
                                          cursorColor: Colors.black38,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.transparent),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.transparent),
                                            )
                                            ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 17.0),
                                    child: Container(
                                      height: 22,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff5D73C3),
                                      ),

                                      child: Center(
                                        child: Text('Pay',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12  ,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat',
                                                decoration: TextDecoration.none
                                            )),
                                      ),
                                    ),
                                  ),
                                ),

                              ]
                            ),
                            ),
                            Container(
                              width: width*.1,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:height*.08,
                                    child: Padding(
                                      padding:  EdgeInsets.only(top:30,bottom: 3.0),
                                      child: VerticalDivider(color: Colors.white,thickness: 2,),
                                    ),
                                  ),
                                  Text('OR',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Montserrat',
                                          decoration: TextDecoration.none
                                      )
                                  ),
                                  SizedBox(
                                    height:height*.05,
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 3.0),
                                      child: VerticalDivider(color: Colors.white,thickness: 1.5,),
                                    ),
                                  ),


                                ],
                              ),),
                            Container(
                              width: width*.4,
                              color: Colors.transparent,
                              child: Column(children: [
                                SizedBox(height: height*.05,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0,top: 0),
                                  child: Text('Scan QR Code ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat',
                                          decoration: TextDecoration.none
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0,right: 17),
                                  child: Image.asset('assets/elements/QR.png',scale: 1.8,),
                                )

                              ],),
                            ),
                          ],)

                        ),

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
