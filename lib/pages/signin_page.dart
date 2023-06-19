
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skido/pages/dashboard.dart';
import 'package:skido/pages/signup_page.dart';

import '../Config/config.dart';
import '../main.dart';
import '../widgets/gmail_facebook_container.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _pdController = new TextEditingController();
  //int loginStatus = 0;
  bool _isNotValidate = false;

  late SharedPreferences prefs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }
  void initSharedPref() async{
    prefs = await SharedPreferences.getInstance();
  }
  void loginUser() async{
    if(_emailController.text.isNotEmpty && _pdController.text.isNotEmpty){
      var reqBody = {
        "email":_emailController.text,
        "password":_pdController.text
      };
      var response = await http.post(Uri.parse(login.toString()),
          headers: {"Content-Type":"application/json"},
          body: jsonEncode(reqBody)
      );
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      if(jsonResponse['status']){
        var myToken = jsonResponse['token'];
        var name  = jsonResponse['name'];
        prefs.setString('token', myToken);
        // String name = jsonResponse['_name'];
        // print(name);
        // print('hiiii');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(token: myToken, name: name)));
      }else{
        print('Something went wrong');
      }
    }
  }


  // Future login(String email, String password) async {
  //   var url = Uri.parse('https://docdock.onrender.com/login');
  //   var requestBody = jsonEncode({
  //     "email": email,
  //     "password": password,
  //   });
  //   var response = await http.post(url,
  //       headers: {
  //         HttpHeaders.contentTypeHeader: 'application/json',
  //         HttpHeaders.acceptHeader: '*'
  //       },
  //       body: requestBody);
  //
  //   Map<String, dynamic> responsei = jsonDecode(response.body.toString());
  //   setState(() {
  //     if (responsei['success'].toString() == "1") {
  //       loginStatus = 1;
  //     }
  //   });
  //   print(responsei['success']);
  //   print(response.statusCode);
  //   // return responsei['success'].toString();
  // }
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff151413),
      body: Stack(
        children:[ Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/elements/backg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            reverse: true, // this is new
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Text(
                      'Sign in', style:
                      TextStyle(color:Colors.white,fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Welcome! Please sign in to your account',
                      style: TextStyle(color:Colors.white,fontSize: 15, ),
                    ),
                    SizedBox(height: 20,),



                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: width*.8,
                          height: height*.06 ,
                          color: Colors.transparent,
                          child: Stack(

                            children: [

                              Container(
                                decoration: BoxDecoration(
                                    border:Border.all(color: Colors.white.withOpacity(0.18)),
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white.withOpacity(0.25),
                                          Colors.white.withOpacity(0.04),
                                        ]
                                    )
                                ),
                              ),
                              BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaY: 3,
                                  sigmaX: 3,
                                ),
                                child:Stack(
                                  children:[
                                    TextFormField(
                                    controller: _emailController,
                                    onChanged: (text) {},
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                                      hintText: 'Email Id',
                                      border: InputBorder.none,
                                      errorText: _isNotValidate ? "Enter Proper Info" : null,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 80, vertical: 10),
                                    ),
                                    style: TextStyle(color: Colors.white70),
                                  ),]
                                )

                              ),
                              Positioned(
                                top:1,
                                left:1,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffa7a8c0),
                                  radius:25,
                                  child:Icon(Icons.email_rounded,color: Colors.white,) ,),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 20,),



                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: width*.8,
                          height: height*.06  ,
                          color: Colors.transparent,
                          child: Stack(

                            children: [

                              Container(
                                decoration: BoxDecoration(
                                    border:Border.all(color: Colors.white.withOpacity(0.18)),
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white.withOpacity(0.25),
                                          Colors.white.withOpacity(0.04),
                                        ]
                                    )
                                ),
                              ),
                              BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaY: 3,
                                    sigmaX: 3,
                                  ),
                                  child:TextFormField(
                                    controller: _pdController,
                                    onChanged: (text) {},
                                    decoration: InputDecoration(
                                      errorText: _isNotValidate ? "Enter Proper Info" : null,
                                      hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                                      hintText: 'Password',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 80, vertical: 10),
                                    ),
                                    style: TextStyle(color: Colors.white70),
                                  )

                              ),
                              Positioned(
                                top:1,
                                left:1,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffa7a8c0),
                                  radius:25,
                                  child:Icon(Icons.lock,color: Colors.white,) ,),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(children: [
                      SizedBox(width: 20,),
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value?? false;
                          });
                        },
                      ),
                      //SizedBox(width: 10,),
                      Text('Remember me',style: TextStyle(color: Colors.white,fontSize: 16),),
                      SizedBox(width: 25,),
                      Text('Forgot Password?',style: TextStyle(color: Colors.white,fontSize: 16),),
                    ],),


                    // GestureDetector(
                    //   onTap: () {
                    //     // login(_emailController.text, _pdController.text);
                    //     // print(loginStatus);
                    //     // if (loginStatus == 1) {
                    //     //   // Navigator.push(
                    //     //   //     context,
                    //     //   //     MaterialPageRoute(
                    //     //   //         builder: (context) => RootPage()));
                    //     //   loginStatus = 0;
                    //     // } else {
                    //     //   print('Login failed');
                    //     // }
                    //     loginUser();
                    //
                    //     // Navigator.push(
                    //     //       context,
                    //     //       MaterialPageRoute(
                    //     //           builder: (context) => MyHomePage(title: 'Flutter Demo Home Page'),));
                    //
                    //   },
                    //   child: Container(
                    //     margin: EdgeInsets.only(top: 20),
                    //     height: height*.063,
                    //     width: width*.7,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xff5D73C3),
                    //       borderRadius: BorderRadius.circular(15),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Colors.black38,
                    //           blurRadius: 12,
                    //           offset: Offset(
                    //             -3.0, // Move to right 10  horizontally
                    //             5.0, // Move to bottom 10 Vertically
                    //           ),)
                    //       ],
                    //     ),
                    //     child: Center(
                    //         child: Text(
                    //           'Login',
                    //           style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold),
                    //         )),
                    //   ),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 4,
                              spreadRadius: 0,
                              offset: Offset(
                                0,
                                5,
                              ),
                            )
                          ]
                      ),
                      child: SizedBox(
                        width: 226,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Color(0xff5D73C3),
                            primary: Colors.red.withOpacity(0),
                            shadowColor: Colors.black,

                          ),
                          onPressed: () {
                            loginUser();
                          },
                          child: Text(
                            'Start',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                        onTap:(){},
                        child: GmailFacebookContainer(isGmail: true, height: height*.063, width: width*.7)),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){},
                        child: GmailFacebookContainer(isGmail: false, height: height*.063, width: width*.7)),


                    SizedBox(
                      height: 200,
                      child: Container(
                        // margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            Text('Don\'t have an account?',style: TextStyle(color: Colors.white,),),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                    // Login button


                  ]),
                )
              ],
            ),
          ),
        ),
          Positioned(
            right: 12,
              top:18,
              child: TextButton(
                      onPressed: (){},
                      child:Text('Skip',style: TextStyle(color: Colors.white,fontSize: 18),)
              ))
        ]
      ),
    );
  }
}















// Container(
// height: 50,
// width: 150,
// decoration: BoxDecoration(
// color: Color(0xff5D73C3),
// boxShadow: [
// BoxShadow(blurRadius: 25,
// offset: Offset(
// -3.0, // Move to right 10  horizontally
// 5.0, // Move to bottom 10 Vertically
// ),)
// ],
// borderRadius: BorderRadius.circular(15)
// ),
// child: Center(
// child: Text(
// 'Get Started',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 18,
// color: Colors.white ,
// ),
// ),
// ),
// ),

















// // Phone number text field
// Container(
// height: 60,
// margin: EdgeInsets.only(top: 40, left: 20, right: 20),
// decoration: BoxDecoration(
// color: Color(0xff151413),
// borderRadius: BorderRadius.circular(20),
// ),
// child: TextFormField(
// keyboardType: TextInputType.phone,
// controller: _emailController,
// onChanged: (text) {},
// decoration: InputDecoration(
// hintText: 'Enter Email Id',
// border: InputBorder.none,
// contentPadding: EdgeInsets.symmetric(
// horizontal: 16, vertical: 16),
// labelStyle: TextStyle(color: Colors.white70),
// ),
// style: TextStyle(color: Colors.white70),
// ),
//),