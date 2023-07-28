
import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:skido/pages/signin_page.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key,required this.email}) : super(key: key);

  final String email;
  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

Future<void> ResetPassword(String email,BuildContext context,String pass,String confirmpass) async {
  final url = 'https://skidobackend.onrender.com/user/resetpassword'; // Replace with your API URL

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode({
        'email': email,
        'password':pass,
        'ConfirmPassword':confirmpass
      }),
    );

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if (jsonResponse['status']) {
      // Reset password request sent successfully
      print('Reset password request sent successfully');
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignInPage(),
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

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final TextEditingController _controller1=new TextEditingController();
    final TextEditingController _controller2=new TextEditingController();
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
                    SizedBox(height: height*.15,),
                    Container(
                      height:height*.3,
                      width:width*.5,
                      decoration: BoxDecoration(
                        // color: Colors.yellow,
                          image:DecorationImage(
                              image: AssetImage("assets/onboarding/create_new_password.png"),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    Text(
                      "Create New Password?",
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
                        "Your new password must be different from previously used passwords.",
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
                                  width: width*.42,
                                  height: 27,
                                  child: Center(
                                    child: TextField(
                                      cursorColor: Colors.white,
                                      controller: _controller1,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),
                                        contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 10),
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
                              ),

                            ],
                          )

                      ),
                    ),
                    SizedBox(height: height*.015,),
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
                                  width: width*.42,
                                  height: 27,
                                  child: Center(
                                    child: TextField(
                                      cursorColor: Colors.white,
                                      controller: _controller2,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),
                                        contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 10),
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
                              ),

                            ],
                          )

                      ),
                    ),
                    SizedBox(height: height*.03,),
                    GestureDetector(
                      onTap:(){
                        ResetPassword(
                          widget.email,
                          context,
                          _controller1.text,
                          _controller2.text
                        );
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
                        child: Center(child: Text("Create",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                      ),
                    ),
                    SizedBox(height: height*.11,),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
