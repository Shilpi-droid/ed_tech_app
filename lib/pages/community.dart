import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/categories.dart';
import 'package:skido/widgets/commcat.dart';
import 'package:skido/widgets/connectcard.dart';
import 'package:skido/widgets/expcommcard.dart';
import 'package:skido/widgets/livedisc.dart';
import 'package:skido/widgets/overlappingcirc.dart';
import 'package:skido/widgets/upcomingtopics.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/elements/backg.png'),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        // padding: EdgeInsets.all(-1),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_rounded, size: 25, color: Colors.white,),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    width: width-30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 60,width: (width-30)*0.2),
                            Text(
                              'Hi! Dianne',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'Join',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'various',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Communities',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            
                          ],
                        ),
                        Expanded(child: Image(image: AssetImage('assets/Community/comm1.png'), fit: BoxFit.fill,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchCardUI(
                          height: 30,
                          width: 180,
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Container(
                                  width: 150,
                                  child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: "Search Communities...",
                                          labelStyle: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                          )
                                      )
                                  ),
                                ),

                              ],
                            ),
                          )
                      ),
                      Container(
                        height: 30,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Color(0xff5D73C3).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color:Colors.white, width: 0.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 9, right: 9),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Start your own...',
                                labelStyle: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: width-30,
                    height: 115,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Commcat(image: 'assets/Community/commcat1.png', text: 'Digital Marketing'),
                        SizedBox(width: 15),
                        Commcat(image: 'assets/Community/comcat2.png', text: 'Product Management'),
                        SizedBox(width: 15),
                        Commcat(image: 'assets/Community/comcat3.png', text: 'Data Science'),
                        SizedBox(width: 15),
                        Commcat(image: 'assets/Community/comcat4.png', text: 'Python'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Connect with people like you',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 92,
                    width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ConnectCard(text: 'Ashna Ahuja', image: 'assets/Community/connect1.png'),
                        SizedBox(width: 10),
                        ConnectCard(text: 'Deny Domnic', image: 'assets/Community/connect2.png'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Explore Communities',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExploreCommunityCard(text: 'Digital Marketing', image: 'assets/Community/expcom1.png'),
                      SizedBox(width: 15),
                      ExploreCommunityCard(text: 'Discussion in movie trailors', image: 'assets/Community/expcom2.png'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Live discussion on bollywood\nmovies',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 152,
                    width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          LiveDiscussion(topic: 'Marketing of Movies', author: 'Emran Emon'),
                          SizedBox(width: 15),
                          LiveDiscussion(topic: 'C Language', author: 'Peter Emerson'),
                        ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Today's task",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: Image(
                              image: AssetImage('assets/Community/task1.png'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "8 tasks today",
                            //textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Meet them and share your ideas",
                            //textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: Image(
                              image: AssetImage('assets/Community/task2.png'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Event",
                            //textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Create and share an event",
                            //textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Upcoming Topics",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 107,
                    width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        UpcomingTopics(topic: 'Data Science', author: 'Rasyid Yilamn', date: 'February 27, 2023'),
                        SizedBox(width: 15),
                        UpcomingTopics(topic: 'Python', author: 'RViren Naidu', date: 'March 7, 2023'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
