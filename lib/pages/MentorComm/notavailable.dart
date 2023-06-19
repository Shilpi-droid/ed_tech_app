
import 'package:flutter/material.dart';

import 'intake_form.dart';

class NotAvailablePopup extends StatefulWidget {
  const NotAvailablePopup({Key? key}) : super(key: key);

  @override
  State<NotAvailablePopup> createState() => _NotAvailablePopupState();
}

class _NotAvailablePopupState extends State<NotAvailablePopup> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        IntakeForm(),
        Opacity(
          opacity: 0.8,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),

        Positioned(
          top: height*.3,
          left: width*0.05,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/MentorPage/recharge_gif.png")
                    )
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: height*.2,
                width: width*.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child:Column(
                  children: [
                    SizedBox(height: height*.01,),
                    Text(
                      "We apologise!",
                      style: TextStyle(
                          color: Color(0xff5F6097),
                          fontSize:22,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          decoration: TextDecoration.none
                      ),),
                    SizedBox(height: height*.02,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width*.02),
                      child: Text(
                        " It appears that the mentor you are trying to reach is not currently available. Please try reaching out to them again at a later time or consider reaching out to another mentor who may be available to assist you",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff5F6097),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
