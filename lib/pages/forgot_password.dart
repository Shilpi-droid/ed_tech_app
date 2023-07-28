
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:skido/pages/check_email.dart';
import 'package:skido/pages/create_new_pass.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}



Future<void> sendResetPasswordRequest(String email,BuildContext context) async {
  final url = 'https://skidobackend.onrender.com/user/forgetpassword'; // Replace with your API URL

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode({
        'email': email,
      }),
    );

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if (jsonResponse['status']) {
      // Reset password request sent successfully
      print('Reset password request sent successfully');
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CreateNewPassword(email: email,),
        ),
      );
    } else {
      // Handle error, e.g., email not found
      print('Failed to send reset password request. Status code: ${response.statusCode}');
    }
  }
  catch (e) {
    // Handle other exceptions
    print('Error sending reset password request: $e');
  }
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    TextEditingController _controller=new TextEditingController();
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
                            image: AssetImage("assets/onboarding/Forgot_password.png"),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                    Text(
                      "Forgot Your Password?",
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
                        "Enter your registered email below to receive password reset instruction.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          // fontStyle:"Montserrat"
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                  width: width*.8,
                  height: height*.07,
                      decoration: BoxDecoration(
                      border:Border.all(color: Colors.white.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(15),),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border:Border.all(color: Colors.white.withOpacity(0.18)),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white.withOpacity(.2)
                              ),
                            ),
                            BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 3,
                                sigmaX: 3,
                              ),
                              child:SizedBox(
                                width: width*.8,
                                height: 27,
                                child: TextField(
                                  controller: _controller,
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    hintText: "Email ID",
                                    hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),
                                    contentPadding: EdgeInsets.only(top:0,bottom:0,left: 10),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                    ),
                                  ),
                                  maxLines: 1,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ),

                          ],
                        )

                    ),
                    ),
                    SizedBox(height: height*.03,),
                    GestureDetector(
                      onTap: (){
                        sendResetPasswordRequest(_controller.text,context);
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
                              offset: Offset(0, 4), // Offset in the x and y directions
                              blurRadius: 4, // Radius of the shadow blur
                              spreadRadius: 1, // Spread of the shadow
                            ),
                          ],
                        ),
                        child: Center(child: Text("Send",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                      ),
                    ),
                    SizedBox(height: height*.11,),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                      },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                // Color to be applied when the button is pressed
                                return Colors.white.withOpacity(.2); // Change this to the desired color
                              }
                              // Color to be applied when the button is not pressed
                              return Colors.transparent; // Change this to the desired color
                            },
                          ),
                        ),
                        child: Text(
                          "Back To Sign In",
                          style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                        )
                    )
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
