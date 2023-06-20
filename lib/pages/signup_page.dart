
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/signin_page.dart';

import '../Config/config.dart';
import '../widgets/gmail_facebook_container.dart';
import 'package:http/http.dart' as http;


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _fnController = new TextEditingController();
  TextEditingController _lnController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _pdController = new TextEditingController();
  TextEditingController _cpdController = new TextEditingController();
  bool _isNotValidate = false;

  void registerUser() async{
      if(_emailController.text.isNotEmpty && _pdController.text.isNotEmpty && _fnController.text.isNotEmpty && _lnController.text.isNotEmpty ){
        var regBody = {
          "first_name": _fnController.text,
          "last_name":_lnController.text,
          "email":_emailController.text,
          "password":_pdController.text,
        };
        var response = await http.post(Uri.parse(signup),
            headers: {"Content-Type":"application/json"},
            body: jsonEncode(regBody)
        );
        var jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        if(jsonResponse['status']){
          final snackBar = SnackBar(
            content: Text('User Signed Up Successfully'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
        }else{
          print("SomeThing Went Wrong");
        }
    }
      else{
      setState(() {
        _isNotValidate = true;
      });
    }
  }

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
                      'Sign up', style:
                    TextStyle(color:Colors.white,fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Welcome! Please sign up to your account',
                      style: TextStyle(color:Colors.white,fontSize: 15, ),
                    ),
                    SizedBox(height: 20,),



                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
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
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white.withOpacity(0.4),
                                          Colors.white.withOpacity(0.08),
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
                                      children:[ TextFormField(
                                        controller: _fnController,
                                        onChanged: (text) {},
                                        decoration: InputDecoration(
                                          hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                                          hintText: 'First Name',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 40, vertical: 10),
                                        ),
                                        style: TextStyle(color: Colors.white70),
                                      ),]
                                  )

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 15,),



                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
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
                                    borderRadius: BorderRadius.circular(15),
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
                                    controller: _lnController,
                                    onChanged: (text) {},
                                    decoration: InputDecoration(

                                      hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                                      hintText: 'Last Name',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10),
                                    ),
                                    style: TextStyle(color: Colors.white70),
                                  )

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
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
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white.withOpacity(0.4),
                                          Colors.white.withOpacity(0.08),
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
                                      children:[ TextFormField(
                                        controller: _emailController,
                                        onChanged: (text) {},
                                        decoration: InputDecoration(
                                          hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                                          hintText: 'Email Id',
                                          border: InputBorder.none,
                                          errorStyle: TextStyle(color: Colors.white),
                                          errorText: _isNotValidate ? "Enter Proper Info" : null,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 40, vertical: 10),
                                        ),
                                        style: TextStyle(color: Colors.white70),
                                      ),]
                                  )

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 15,),



                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
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
                                    borderRadius: BorderRadius.circular(15),
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

                                      hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                                      hintText: 'Password',
                                      border: InputBorder.none,
                                      errorStyle: TextStyle(color: Colors.white),
                                      errorText: _isNotValidate ? "Enter Proper Info" : null,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10),
                                    ),
                                    style: TextStyle(color: Colors.white70),
                                  )

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(15),
                    //   child: GestureDetector(
                    //     onTap: (){},
                    //     child: Container(
                    //       width: width*.8,
                    //       height: height*.06 ,
                    //       color: Colors.transparent,
                    //       child: Stack(
                    //
                    //         children: [
                    //
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 border:Border.all(color: Colors.white.withOpacity(0.18)),
                    //                 borderRadius: BorderRadius.circular(15),
                    //                 gradient: LinearGradient(
                    //                     begin: Alignment.topCenter,
                    //                     end: Alignment.bottomCenter,
                    //                     colors: [
                    //                       Colors.white.withOpacity(0.4),
                    //                       Colors.white.withOpacity(0.08),
                    //                     ]
                    //                 )
                    //             ),
                    //           ),
                    //           BackdropFilter(
                    //               filter: ImageFilter.blur(
                    //                 sigmaY: 3,
                    //                 sigmaX: 3,
                    //               ),
                    //               child:Stack(
                    //                   children:[ TextFormField(
                    //                     controller: _cpdController,
                    //                     onChanged: (text) {},
                    //                     decoration: InputDecoration(
                    //                       hintStyle: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),
                    //                       hintText: 'Confirm Password',
                    //                       border: InputBorder.none,
                    //                       errorStyle: TextStyle(color: Colors.white),
                    //                       errorText: _isNotValidate ? "Enter Proper Info" : null,
                    //                       contentPadding: EdgeInsets.symmetric(
                    //                           horizontal: 40, vertical: 10),
                    //                     ),
                    //                     style: TextStyle(color: Colors.white70),
                    //                   ),]
                    //               )
                    //
                    //           ),
                    //
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),



                    GestureDetector(
                      onTap: () {
                        registerUser();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: height*.063,
                        width: width*.7,
                        decoration: BoxDecoration(
                          color: Color(0xff5D73C3),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 12,
                              offset: Offset(
                                -3.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),)
                          ],
                        ),
                        child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
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
                      height: 100,
                      child: Container(
                        // margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            Text('Already have an account?',style: TextStyle(color: Colors.white,),),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInPage()));
                                },
                                child: Text(
                                  'Sign in',
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
