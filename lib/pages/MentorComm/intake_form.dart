
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:skido/pages/MentorComm/notavailable.dart';



class IntakeForm extends StatefulWidget {
  const IntakeForm({Key? key}) : super(key: key);

  @override
  State<IntakeForm> createState() => _IntakeFormState();
}

class _IntakeFormState extends State<IntakeForm> {
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
                SizedBox(height: height*.02,),
                Text(
                  "Intake Form",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(width*.05),
                      height: height*.2,
                      width: width*.6,
                      child: Text(
                        "Consult with your trusted mentos for your queries",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,fontWeight: FontWeight.bold
                        ),

                      ),
                    ),
                    Container(
                      height: height*.3,
                      width: width*.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:AssetImage("assets/MentorPage/intake1.png"),
                          fit: BoxFit.contain
                        )
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(width*.05),
                      height: height*.3,
                      width: width*.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:AssetImage("assets/MentorPage/intake2.png"),
                              fit: BoxFit.fitWidth
                          )
                      ),
                    ),
                    Container(
                      height: height*.3,
                      width: width*.5,
                      child: Column(
                        children: [
                          IntakeTF(height: height*.035,width: width*.9,text: "First Name",),
                          IntakeTF(height: height*.035,width: width*.9,text: "Last Name",),
                          IntakeTF(height: height*.035,width: width*.9,text: "Email Id",),
                          IntakeTF(height: height*.035,width: width*.9,text: "Aspirant's Id",),
                          IntakeTF(height: height*.035,width: width*.9,text: "Query Topic",),
                          IntakeTF(height: height*.035,width: width*.9,text: "Domain",),
                        ],
                      ),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntakeTF(text: "Brief of Query", height: height*.15, width: 2.2*width),
                  ],
                ),
                SizedBox(height: height*.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotAvailablePopup()),
                        );
                      },
                      child: Container(
                        height: height*.055,
                        width: width*.4,
                        decoration: BoxDecoration(
                          color: Color(0xff5D73C3),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0,
                                3.0,
                              ),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Chat",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height*.055,
                      width: width*.4,
                      decoration: BoxDecoration(
                        color: Color(0xff5D73C3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              0.0,
                              3.0,
                            ),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Call",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    )
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

class IntakeTF extends StatelessWidget {
  const IntakeTF({Key? key,required this.text,required this.height,required this.width}) : super(key: key);

  final String text;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    //final width=MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: width*.4,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.6)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  // width: width*.8,
                  // height: height,
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.white.withOpacity(0.18)),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(.3),
                          Colors.white.withOpacity(0.0),
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
                        contentPadding: EdgeInsets.symmetric(horizontal: width*.02,vertical: 10),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintText: text,

                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                        hintMaxLines: 1,

                      ),
                      maxLines:4,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    )
                )
              ],
            )

        ),
      ),
    );
  }
}