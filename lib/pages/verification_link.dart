import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skido/pages/signin_page.dart';

class VerificationLinkHandlerPage extends StatefulWidget {
  final String email;

  VerificationLinkHandlerPage({required this.email});

  @override
  _VerificationLinkHandlerPageState createState() =>
      _VerificationLinkHandlerPageState();
}
Future<void> emailVerification(String email,BuildContext context) async {
  final url = Uri.parse('https://skidobackend.onrender.com/user/isVerified'); // Replace with your API endpoint for email verification

  try {
    final response = await http.post(
        url,
        headers: {"Content-Type":"application/json"},
        body: jsonEncode({'email': email})
    );


    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print("email:"+email);
      print(jsonData);
      // bool isVerified = jsonData['isVerified'] ?? false; // Replace 'isVerified' with the key for verification status in your API response

      if (jsonData['status']) {
        // User is verified, redirect back to the login page
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          ),
        ); // Replace '/login' with the route name for your login page
      } else {
        // User verification denied, show a snackbar
        // Fluttertoast.showToast(
        //   msg: 'Email verification was denied',
        //   toastLength: Toast.LENGTH_LONG,
        //   gravity: ToastGravity.BOTTOM,
        // );
      }
    } else {
      // If the request is not successful, throw an error or handle it accordingly
      throw Exception('Failed to fetch data');
    }
  } catch (e) {
    // Handle any exceptions that occur during the HTTP request
    print('Error: $e');
    // You can show a snackbar here to inform the user about the error if needed
  }
}

class _VerificationLinkHandlerPageState extends State<VerificationLinkHandlerPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   _handleVerificationLink();
  // }
  //
  // Future<void> _handleVerificationLink() async {
  //   if (await canLaunch(widget.verificationLink)) {
  //     await launch(widget.verificationLink, forceSafariVC: false);
  //   } else {
  //     // Handle error if the link cannot be opened
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    // You can show a loading indicator here while the link is being handled.
    // Or, you can redirect to a success page immediately and handle the verification
    // status in the background.
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
                    GestureDetector(
                      onTap: (){
                        emailVerification(widget.email,context);
                      },
                      child: Container(
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
                        child: Center(child: Text("Done",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                      ),
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