import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skido/Config/config.dart';
import 'package:skido/pages/signin_page.dart';

class Settings extends StatefulWidget {
  final token;
  const Settings({Key? key, required this.token}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  void logoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage()));
    final snackBar = SnackBar(
      content: Text('User Logged Out Successfully'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return  Container(
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
              child:Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: width*.07),
                        child: CircleAvatar(
                          radius: 26,
                        ),
                      ),
                      Text("Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26
                      ),
                      )
                    ],
                  ),
                  SizedBox(height: height*.02,),
                  SettingsRow(
                    icon: Icon(Icons.person,color: Colors.white,size: 35,),
                    label: "Account Preferences",
                  ),
                  SettingsRow(
                    icon: Icon(Icons.lock,color: Colors.white,size: 35,),
                    label: "Sign in & Security",
                  ),
                  SettingsRow(
                    icon: Icon(Icons.visibility,color: Colors.white,size: 35,),
                    label: "Visibility",
                  ),
                  SettingsRow(
                    icon: Icon(Icons.notifications,color: Colors.white,size: 35,),
                    label: "Notifications",
                  ),
                  SizedBox(height: height*.02,),
                  Divider(
                    indent: width*.1,
                    endIndent: width*.1,
                    color: Colors.white,
                    thickness: 2,
                  ),
                  SizedBox(height: height*.05,),
                  AdditionalRows(label: "Help Centre",),
                  AdditionalRows(label: "Privacy Policy",),
                  AdditionalRows(label: "Accessibility",),
                  AdditionalRows(label: "User Agreement",),
                  AdditionalRows(label: "End user license agreement",),
                  GestureDetector(
                      onTap:(){ logoutUser();},
                      child: AdditionalRows(label: "Sign Out",)),
                  AdditionalRows(label: "Version: 1.0.0",),
                ],
              )
          ),
        ),
      ),
    );
  }
}

class SettingsRow extends StatelessWidget {
  const SettingsRow({
    Key? key,
    required this.label,
    required this.icon,

  }) : super(key: key);

  final Icon icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height*.015),
      child: Row(
        children: [
            Padding(
              padding:  EdgeInsets.only(left: width*.09,right: width*.05),
              child: icon,
            ),
          Text(label,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}


class AdditionalRows extends StatelessWidget {
  const AdditionalRows({Key? key,required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
        padding:  EdgeInsets.only(left: width*.09,right: width*.05,bottom: height*.02,),
        child: Text(label,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
        )
      ],
    );
  }
}
