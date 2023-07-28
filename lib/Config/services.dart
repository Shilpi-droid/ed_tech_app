import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'config.dart';

class AuthService {


  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }


  Future<UserCredential?> signInWithGoogle(BuildContext context,SharedPreferences prefs) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      try {
        final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

        var token = googleAuth.idToken.toString();
        while (token.length > 0) {
          int initLength = (token.length >= 500 ? 500 : token.length);
          print(token.substring(0, initLength));
          int endLength = token.length;
          token = token.substring(initLength, endLength);
        }

        var url =
        Uri.parse('https://oauth2.googleapis.com/tokeninfo?id_token=${googleAuth.idToken}');
        var get_response = await http.get(url);
        print("get response");
        print(get_response.body);
        print("email");
        print(jsonDecode(get_response.body)['email']);


        // // Create a user document in Firestore with the user's details
        // await FirebaseFirestore.instance
        //     .collection('users')
        //     .doc(userCredential.user!.uid)
        //     .set({
        //   'email': userCredential.user!.email,
        //   'communitiesJoined': 0, // Initial value for the number of communities joined
        //   'communityImages': [], // Initial empty array to store community images
        // });

        // Send user credentials to Node.js backend
        final response = await http.post(
          Uri.parse("https://skidobackend.onrender.com/user/googleSignIn"),
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.acceptHeader: '*'
          },
          body: jsonEncode({
            //'email': jsonDecode(get_response.body)['email'].toString(),
            'email':userCredential.user!.email,
            //'idToken': token,
            // 'idToken': googleAuth.idToken,
            // 'accessToken': googleAuth.accessToken,
            // 'email':googleUser.email
            // Add any other required user credentials
          }),
        );
        var jsonResponse=jsonDecode(response.body);


        // print('ID TOKEN');


        print("google.idToken");
        print(googleAuth.idToken);
        print("json response");
        print(jsonResponse);
        if(jsonResponse['status']){
        //     if (response.statusCode == 200)
        //if (response.statusCode == 200) {
          // Successful response, extract the token
          print("myToken(token in response)");
          var myToken = jsonResponse['token'];
          print(myToken);
          prefs.setString('token', myToken);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(token: myToken)));
        } else {
          // Handle unsuccessful response
          print('Failed to login: ${response.statusCode}');
        }

        return userCredential;
      } catch (e) {
        // Handle sign-in failure
        print("Sign-in failed: $e");
        return null;
      }
    }

    // User canceled the sign-in, stay on the login screen
    return null;
  }


  // Future<UserCredential?> signUpWithGoogle(BuildContext context) async {
  //   final GoogleSignIn googleSignIn = GoogleSignIn();
  //   final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  //
  //   if (googleUser != null) {
  //     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //
  //     final OAuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //
  //     try {
  //       final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
  //
  //       // Send user credentials to Node.js backend for signup
  //       final response = await http.post(
  //         Uri.parse(signup),
  //         body: {
  //           'idToken': googleAuth.idToken,
  //           'accessToken': googleAuth.accessToken,
  //           'email':googleUser.email
  //           // Add any other required user credentials for signup
  //         },
  //       );
  //
  //       if (response.statusCode == 200) {
  //         // Successful signup, extract the token
  //         final token = response.body;
  //
  //         // Proceed to the homepage passing the token
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => MyHomePage(token: token)),
  //         );
  //       } else {
  //         // Handle unsuccessful signup
  //         print('Failed to signup: ${response.statusCode}');
  //       }
  //
  //       return userCredential;
  //     } catch (e) {
  //       // Handle signup failure
  //       print("Signup failed: $e");
  //       return null;
  //     }
  //   }
  //
  //   // User canceled the signup, stay on the login screen
  //   return null;
  // }


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Future<void> signInWithGoogle(context) async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     final GoogleSignInAuthentication googleAuth =
  //     await googleUser!.authentication;
  //     final OAuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //     final UserCredential userCredential =
  //     await _auth.signInWithCredential(credential);
  //
  //     // Prepare the data to be sent to the backend
  //     final Map<String, dynamic> userData = {
  //       'email': userCredential.user!.email,
  //       'password': userCredential.user!.uid,
  //     };
  //
  //     // Send the data to your Node.js backend using a POST request
  //     final response = await http.post(
  //       Uri.parse(googleSignIn),
  //       body: userData,
  //     );
  //
  //     var jsonResponse = jsonDecode(response.body);
  //     if (response.statusCode == 200)
  //       //if(jsonResponse['status'])
  //         {
  //       var myToken = jsonResponse['token'];
  //       Navigator.push(context, MaterialPageRoute(
  //           builder: (context) => MyHomePage(token: myToken)));
  //     } else {
  //       print('Failed to register user');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }




}