import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'package:skido/pages/details.dart';
import 'package:skido/pages/forgot_password.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/coursecard.dart';

class Book extends StatefulWidget {
  const Book({Key? key,required this.userId}) : super(key: key);

  final String userId;

  @override
  State<Book> createState() => _BookState();
}


void updateProfile(
    String phn,
    String designation,
    String interests,
    String bio,
    String userId,
    String field
    ) async {

  final url = Uri.parse('https://skidobackend.onrender.com/comm/updateProfile/'+userId); // Replace with your API endpoint for email verification
  final response;
  try {
    if(field.compareTo("phone_no")==0){
     response = await http.post(
        url,
        headers: {"Content-Type":"application/json"},
        body: jsonEncode({
          'phone_no':phn,
        })
    );}
    else if(field.compareTo("designation")==0){
       response = await http.post(
          url,
          headers: {"Content-Type":"application/json"},
          body: jsonEncode({
            'current_designation':designation,
          })
      );}
    else if(field.compareTo("interests")==0){
       response = await http.post(
          url,
          headers: {"Content-Type":"application/json"},
          body: jsonEncode({
            'interests':interests,
          })
      );}
    else {
      response = await http.post(
          url,
          headers: {"Content-Type":"application/json"},
          body: jsonEncode({
            'bio':bio
          })
      );}



    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // print("email:"+email);
      print(jsonData);
      // bool isVerified = jsonData['isVerified'] ?? false; // Replace 'isVerified' with the key for verification status in your API response

      if (jsonData['status']) {
        // User is verified, redirect back to the login page

      } else {
        print("scoobydoo");
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




Future<Map<String, dynamic>?> getProfileData(String userId) async {
  try {
    final String url = 'https://skidobackend.onrender.com/comm/getUserData/$userId';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      print("response data"+response.body);
      if (responseData['status'] == true) {
        Map<String, dynamic>? userData = responseData['data'];
        return userData; // Return the userData
      }
    } else {
      // Request failed with an error status code
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    // Request failed for some other reason (e.g., network issues)
    print('Error: $e');
  }

  // Return null if any error occurred or if the status is not true
  return null;
}





class _BookState extends State<Book> {

   TextEditingController phnCtl=new TextEditingController();
   TextEditingController dsgCtl=new TextEditingController();
   TextEditingController interestCtl=new TextEditingController();
   TextEditingController bioCtl=new TextEditingController();
   late String email = '';
   late String uniqueId = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // phnCtl = TextEditingController();
    // dsgCtl = TextEditingController();
    // interestCtl = TextEditingController();
    // bioCtl = TextEditingController();
    fetchUserData();
  }
  Future<void> fetchUserData() async {
    String userId = widget.userId; // Replace with the actual user ID
    Map<String, dynamic>? userData = await getProfileData(userId);
    if (userData != null) {
      setState(() {
        // Update the state with retrieved user data
        phnCtl.text = userData['phone_no'].toString() ?? '';
        dsgCtl.text = userData['current_designation'] ?? '';
        interestCtl.text=userData['interests'] ?? '';
        bioCtl.text = userData['bio'] ?? '';
        email = userData['email'] ?? '';
        uniqueId = userData['unique_id'] ?? '';
        print("user data");
        print(phnCtl.text);
        print(dsgCtl.text);
        print(dsgCtl.text);
        print(email);
        print(uniqueId);
      });
    } else {
      // Handle the case when userData is null or not found
      print('User data is null or not found.');
    }
  }

  bool phnenabled=false;
  bool dsgenabled=false;
  bool intenabled=false;
  bool bioenabled=false;

  FocusNode phnFocusNode = FocusNode();
  FocusNode dsgFocusNode = FocusNode();
  FocusNode intFocusNode = FocusNode();
  FocusNode bioFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: width,
                // decoration: BoxDecoration(
                //   image:
                // ),
                color: Colors.transparent,
                child: Center(
                  child: Text("User Profile",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xff5F6097),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(30),
                      )
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            child: Container(
                              height: width*0.35,
                              width: width*0.35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 2),
                                borderRadius: BorderRadius.circular(width*0.175),
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(width:10),
                          Container(
                            child: Column(
                              children: [
                                Text("Martin Alex",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                //SizedBox(height:5),
                                Text('I am a Product Manager',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                    width: width-30-width*0.35-10,
                                    child: Text(
                                      'Bio',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        //fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text("General",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          //fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.mail, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Text(email,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.visibility, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Text(
                                  "Password",
                                  // password.substring(0,20),
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 133),
                                IconButton(
                                    onPressed: ()
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                          ForgotPassword()
                                      )
                                      );
                                    },
                                    icon:Icon(Icons.edit, color: Colors.white, size: 30)
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.phone_android_rounded, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Container(
                                  width: width-181,
                                  child: TextField(
                                    // autofillHints: [],
                                    controller: phnCtl,
                                    enabled: phnenabled,
                                    focusNode: phnFocusNode,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(

                                      hintText: 'Enter Phone Number',
                                      hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: ()
                                    {
                                      phnFocusNode.requestFocus();
                                      setState(() {
                                        phnenabled=!phnenabled;
                                      });
                                      if(phnenabled==false)
                                        {
                                          updateProfile(
                                            phnCtl.text,
                                            dsgCtl.text,
                                            interestCtl.text,
                                            bioCtl.text,
                                            widget.userId,
                                            "phone_no"
                                          );
                                        }
                                    },
                                    icon:Icon(phnenabled?Icons.done:Icons.edit, color: Colors.white, size: 30)
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.how_to_reg, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Text(uniqueId,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.person_4, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Container(
                                  width: width-181,
                                  child: TextField(
                                    controller: dsgCtl,
                                    focusNode: dsgFocusNode,
                                    enabled: dsgenabled,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Designation',
                                      hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: ()
                                    {
                                      dsgFocusNode.requestFocus();
                                      setState(() {
                                        dsgenabled=!dsgenabled;
                                      });
                                    if(dsgenabled==false)
                                    {
                                      updateProfile(
                                      phnCtl.text,
                                      dsgCtl.text,
                                      interestCtl.text,
                                      bioCtl.text,
                                      widget.userId,
                                      "designation"
                                      );
                                    }
                                    },
                                    icon:Icon(dsgenabled?Icons.done:Icons.edit, color: Colors.white, size: 30)
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.interests_rounded, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Container(
                                  width: width-181,
                                  child: TextField(
                                    enabled: intenabled,
                                    focusNode: intFocusNode,
                                    controller: interestCtl,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Interests',
                                      hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: ()
                                    {
                                      intFocusNode.requestFocus();
                                        setState(() {
                                          intenabled=!intenabled;
                                        });
                                      if(intenabled==false)
                                      {
                                        updateProfile(
                                            phnCtl.text,
                                            dsgCtl.text,
                                            interestCtl.text,
                                            bioCtl.text,
                                            widget.userId,
                                            "interests"
                                        );
                                      }
                                    },
                                    icon:Icon(intenabled?Icons.done:Icons.edit, color: Colors.white, size: 30)
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width-30,
                        height: 61,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,5),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.25),
                              Colors.white.withOpacity(0.2),
                            ],
                          ),
                        ),
                        child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.add_reaction_rounded, color: Colors.white, size: 30),
                                SizedBox(width: 30),
                                Container(
                                  width: width-181,
                                  child: TextField(
                                    enabled: bioenabled,
                                    controller: bioCtl,
                                    focusNode: bioFocusNode,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Bio',
                                      hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: ()
                                    {
                                      bioFocusNode.requestFocus();
                                      setState(() {
                                        bioenabled=!bioenabled;
                                      });
                                      if(bioenabled==false)
                                      {
                                        updateProfile(
                                            phnCtl.text,
                                            dsgCtl.text,
                                            interestCtl.text,
                                            bioCtl.text,
                                            widget.userId,
                                            "bio"
                                        );
                                      }
                                    },
                                    icon:Icon(bioenabled?Icons.done:Icons.edit, color: Colors.white, size: 30)
                                ),
                              ],
                            )
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}