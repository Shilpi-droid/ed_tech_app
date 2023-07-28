
import 'package:flutter/material.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
              child:Center(
                child: Column(
                  children: [
                    SizedBox(height: height*.2,),
                    Container(
                      height:height*.3,
                      width:width*.5,
                      decoration: BoxDecoration(
                        // color: Colors.yellow,
                          image:DecorationImage(
                              image: AssetImage("assets/onboarding/check_email.png"),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    Text(
                      "Check Your Email",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: height*.02,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      height: height*.07 ,
                      child: Text(
                        "We have sent a password recovery instructions to your email.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          // fontStyle:"Montserrat"
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: height*.2,),
                    Container(
                      height: height*.06,
                      width: width*.45,
                      decoration: BoxDecoration(
                        color: Color(0xff5D73C3),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38, // Shadow color
                            offset: Offset(0, 2), // Offset in the x and y directions
                            blurRadius: 4, // Radius of the shadow blur
                            spreadRadius: 2, // Spread of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("Ok",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                    ),
                    SizedBox(height: height*.05,),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
