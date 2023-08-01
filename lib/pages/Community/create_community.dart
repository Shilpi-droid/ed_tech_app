import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class CreateCommunityPage extends StatefulWidget {
  const CreateCommunityPage({super.key});

  @override
  State<CreateCommunityPage> createState() => _CreateCommunityPageState();
}


void createCommunity(
    String name,
    String community_name,
    String category,
    String description,
    String email
    ) async {

  final url = Uri.parse('https://skidobackend.onrender.com/comm/addCommunity'); // Replace with your API endpoint for email verification

  try {
    final response = await http.post(
        url,
        headers: {"Content-Type":"application/json"},
        body: jsonEncode({
          'email':email,
          'owner_name' : name,
          'name': community_name,
          'category':category,
          'description':description
        })
    );


    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // print("email:"+email);
      print(jsonData);
      // bool isVerified = jsonData['isVerified'] ?? false; // Replace 'isVerified' with the key for verification status in your API response

      if (jsonData['status']) {
        // User is verified, redirect back to the login page

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











class _CreateCommunityPageState extends State<CreateCommunityPage> {

  TextEditingController nameCtl=new TextEditingController();
  TextEditingController community_nameCtl=new TextEditingController();
  TextEditingController descriptionCtl=new TextEditingController();
  TextEditingController emailCtl=new TextEditingController();

  List<String> _dropdownItems = ['Select Category', 'News', 'Sports', 'Tech', 'Upskill', 'GK', 'Cricket', 'Football', 'Data Science', 'AI', 'ML', 'IOT', 'UI/UX', 'Cloud Computing'];
  String selectedValue = 'Select Category';
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
            item,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )
        ),
      );
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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,)
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("Create Your Community",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 35),
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
                      child: TextField(
                        controller: nameCtl,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
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
                      child: TextField(

                        controller: emailCtl,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter Email Id',
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
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
                      child: TextField(
                        controller: community_nameCtl,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter Community Name',
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
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
                        child: Container(
                          color: Colors.transparent,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              isDense: true,
                              menuMaxHeight: 200,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                              ),
                              //alignment: Alignment.bottomCenter,
                              elevation: -8,
                              dropdownColor: Colors.black.withOpacity(0.7),
                              value: selectedValue,
                              borderRadius: BorderRadius.circular(8.0),
                              enableFeedback: false,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: width-30,
                    height: 175,
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
                    child: TextFormField(
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                      ),
                      controller: descriptionCtl,
                      keyboardType: TextInputType.multiline,
                      minLines: 2,
                      maxLines: 12,
                      inputFormatters: [
                        new LengthLimitingTextInputFormatter(600),// for mobile
                      ],
                      decoration: InputDecoration(
                        hintText: 'Community Description\n(Not more than 600 characters)',
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Text("Are you a Government-Registered organization?",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Container(child: RadioGroup()),
                  // SizedBox(height: 40),
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
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Color(0xff5D73C3),
                          primary: Colors.red.withOpacity(0),
                          shadowColor: Colors.black,

                        ),
                        onPressed: () {
                          createCommunity(
                            nameCtl.text,
                            community_nameCtl.text,
                            selectedValue,
                            descriptionCtl.text,
                            emailCtl.text,
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          CheckEmailPopup(),
                          )
                          );
                        },
                        child: Text(
                          'Submit',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }


}


class CheckEmailPopup extends StatelessWidget {
  const CheckEmailPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CreateCommunityPage(),
        Opacity(
          opacity: 0.75,
          child: ModalBarrier(
            dismissible: true,
            color: Colors.black,
          ),
        ),
        Positioned(
          left:0,
            right:0,
            top:0,
            bottom:0,
            child: SizedBox(
              height: height*.65,

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
                        fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      decoration: TextDecoration.none
                    ),
                  ),
                  SizedBox(height: height*.02,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    height: height*.07 ,
                    child: Text(
                      "We have sent instructions to your email.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                          fontFamily: "Montserrat",
                          decoration: TextDecoration.none
                        // fontStyle:"Montserrat"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}















