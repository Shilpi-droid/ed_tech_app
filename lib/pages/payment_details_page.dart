
import 'dart:ui';

import 'package:flutter/material.dart';

import 'UPI_page.dart';


class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key,required this.page}) : super(key: key);

  final Widget page;
  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {

  String selectedOption="";
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
                              height: height*.032,
                              width: width*.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xff5F6097),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal:15,vertical: 3.2),
                                child: Text('Payment Method',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      decoration: TextDecoration.none
                                  ),
                                ),
                              ),
                            )),
                        Positioned(
                          top: -8,
                          child: Container(
                            height: height*.3,
                            width: width*.95,
                            color: Colors.transparent,
                            child: Material(
                              color: Colors.transparent,
                              child: ListView(
                                children: [
                                  SizedBox(
                                    height: 25,
                                    child: ListTile(
                                      title: Text('Netbanking',
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat'
                                        ),
                                      ),
                                      leading: Radio(
                                        activeColor: Colors.white,
                                        value: 'Netbanking',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: ListTile(
                                      title: Text('Credit/Debit Card',
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat'
                                        ),
                                      ),
                                      leading: Radio(
                                        activeColor: Colors.white,
                                        value: 'Credit/Debit Card',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 25,
                                    child: ListTile(
                                      title:  Text('UPI',
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat'
                                        ),
                                      ),
                                      leading: Radio(
                                        focusColor: Colors.white,
                                        activeColor: Colors.white,
                                        value: 'UPI',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: ListTile(
                                       // tileColor: Colors.white,
                                      title: Text('Wallet',
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat'
                                        ),
                                      ),
                                      leading: Radio(
                                        activeColor: Colors.white,
                                        value: 'Wallet',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                            top: height*.12,
                            left: width*.7,
                            child: Container(
                              height: height*.028,
                              width: 70,

                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => UPIPage(page: widget.page)),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff5D73C3),
                                  ),

                                  child: Center(
                                    child: Text('Next',
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
