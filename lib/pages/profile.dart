import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/widgets/awards.dart';
import 'package:skido/widgets/progresscard.dart';
import 'package:skido/widgets/timeline.dart';
import 'package:skido/widgets/upcomingev.dart';

import '../widgets/categories.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: width-30,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "UI/UX", ),
                            SizedBox(width: 5),
                            CustomCard(title: 'Your Progress', marksObtained: 70, marksTotal: 100, courseName: "DBMS", ),
                            SizedBox(width: 5),
                            CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "OS", ),
                            SizedBox(width: 5),
                            CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "COA", ),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 168,
                    width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        AwardCard(currentLevelNo: 72, totalNoOfLevels: 90),
                        SizedBox(width: 5),
                        AwardCard(currentLevelNo: 62, totalNoOfLevels: 90),
                        SizedBox(width: 5),
                        AwardCard(currentLevelNo: 32, totalNoOfLevels: 90),
                        SizedBox(width: 5),
                        AwardCard(currentLevelNo: 42, totalNoOfLevels: 90),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height:62,
                    // width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Categories(text: "Design"),
                        SizedBox(width: 25),
                        Categories(text: "Marketing"),
                        SizedBox(width: 25),
                        Categories(text: "Sales"),
                        SizedBox(width: 25),
                        Categories(text: "Trade"),
                        SizedBox(width: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height:151,
                    // width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Timeline(date: "1st December", text: "3D illustration in Web Design"),
                        SizedBox(width: 10),
                        Timeline(date: "6th December", text: "Glassmorphism trend, how long will it exist"),
                      ],
                    ),
                  ),
                  SizedBox(height:20),
                  Center(
                    child: Text("Upcoming Events",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    height:280,
                    width: width-30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        UpcomingEvent(
                            logoImage: 'assets/elements/mainlogo.png',
                            heading: "Ask a digital marketing pro",
                            description: "Get your digital marketing questions answered by an industry expert",
                            status: "LIVE",
                            dayDate: "Wednesday, 17th June 2023",
                            time: "11am-2pm",
                            eventImage: 'assets/elements/upceve1.png')
                        // SizedBox(width: 10),
                        // Timeline(date: "6th December", text: "Glassmorphism trend, how long will it exist"),
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
