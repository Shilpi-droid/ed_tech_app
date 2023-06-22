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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: const Offset(
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
                backgroundColor: const Color(0xff5D73C3),
                primary: Colors.red.withOpacity(0),
                shadowColor: Colors.black,

              ),
              onPressed: () {
                logoutUser();
              },
              child: Text(
                'Logout',
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
      ),
    );
  }
}
