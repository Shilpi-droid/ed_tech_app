
import 'package:flutter/material.dart';
import 'package:skido/pages/Mentor/TopMentor.dart';

import '../Mentor/mentor_profile_page.dart';

class RechargePopup extends StatefulWidget {
  const RechargePopup({Key? key,required this.mentor,required this.isChat}) : super(key: key);

  final TopMentor mentor;
  final bool isChat;

  @override
  State<RechargePopup> createState() => _RechargePopupState();
}

class _RechargePopupState extends State<RechargePopup> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        MentorProfile(mentor: widget.mentor),
        Opacity(
          opacity: 0.8,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),
        Positioned(
          top: height*.45,
          left: width*0.05,
            child: Container(
              height: height*.2,
              width: width*.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child:Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.06,vertical: height*.03),
                    child: Text(
                      widget.isChat?
                      "Minimum Balance of 1 Hour (INR 1000.0) is required to start chat with ${widget.mentor.name}."
                      :"Minimum Balance of 1 Hour (INR 500.0) is required to start call with ${widget.mentor.name}.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff5F6097),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height*.045,
                        width: width*.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xff5D73C3))
                        ),
                        child: Center(
                          child: Text("Cancel",
                          style: TextStyle(
                            color: Color(0xff5D73C3),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            fontFamily: 'Montserrat'
                          ),
                          ),
                        ),
                      ),
                      SizedBox(width: width*.05,),
                      Container(
                        height: height*.045,
                        width: width*.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff5D73C3)
                        ),
                        child: Center(
                            child: Text("Recharge",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold, decoration: TextDecoration.none,
                            fontFamily: 'Montserrat'
                            ),
                            ),
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
        )
      ],
    );
  }
}
