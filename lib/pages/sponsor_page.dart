
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/sponsor_done_page.dart';

import '../widgets/WP1UI.dart';
import '../widgets/sponsor_tile.dart';


class Sponsor extends StatefulWidget {
  const Sponsor({Key? key}) : super(key: key);

  @override
  State<Sponsor> createState() => _SponsorState();
}

class _SponsorState extends State<Sponsor> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        WP1UI(),
        Opacity(
          opacity: 0.9,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),
        // Dialog content
        Positioned(
          top: height*.37,
          left: width*0.017,
          child: Container(
            width: width*.98,
            height: height*.3,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
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
                                Colors.white.withOpacity(.3 ),
                                Colors.white.withOpacity(0.02),
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
                        top: -8,
                        left: -10,
                        child: Container(
                          height: height*.35,
                          width: width*.95,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              SizedBox(height: 12,),
                              SponsorTile(text: "Name : ",),
                              SponsorTile(text: "Company Name : ",),
                              SponsorTile(text: "Email id : ",),
                              SponsorTile(text: "Contact no. : ",),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: height*.62,
            left: width*.38,
            child: Container(
              height: height*.047,
              width: width*.3,

              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SponsorDonePage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5D73C3),
                  ),

                  child: Center(
                    child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18  ,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.none
                        )),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
