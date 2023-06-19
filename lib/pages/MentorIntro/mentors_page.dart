
import 'package:flutter/material.dart';
import 'package:skido/pages/MentorIntro/filter_page.dart';
import 'package:skido/pages/MentorIntro/mentor_onboarding_page.dart';
import 'package:skido/widgets/Mentor/mentor_page_steps.dart';

import '../../models/Mentee.dart';
import '../../models/Mentor.dart';
import '../../widgets/Mentor/famous_mentor_card.dart';
import '../../widgets/Mentor/mentor_card.dart';
import '../../widgets/Mentor/mentor_page_header.dart';
import '../../widgets/Mentor/mentor_review_card.dart';
import '../../widgets/Mentor/search_button.dart';

  class MentorPage extends StatefulWidget {
  const MentorPage({Key? key}) : super(key: key);

  @override
  State<MentorPage> createState() => _MentorPageState();
}

class _MentorPageState extends State<MentorPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: height,
              width: width,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/elements/backg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
                        )
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      SearchButton(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FilterPage()),
                          );
                        },
                        child: Container(
                          height: height*.04,
                          width: width*.3,
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.white.withOpacity(0.18)),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff5D73C3).withOpacity(.9),
                                  Color(0xff5D73C3).withOpacity(0.2),
                                ]
                            ),
                          ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.filter_alt_rounded,color: Colors.white,),
                                Text("Filter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            )
                        ),
                      )
                    ]
                  ),
                  SizedBox(height: height*.02,),
                  Container(
                    height: height*.25,
                    width: width*.93,
                    child: Stack(
                        children:[
                          Positioned(
                              left: 0,
                              right: 0,
                              child: MentorPageHeader()),
                          Positioned(
                            top: height*.185,
                              left: width*.05,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MentorOnboarding()),

                                  );
                                },
                                child: Container(
                                  width: width*.25,
                                  height: height*.035,
                                  decoration: BoxDecoration(
                                    color: Color(0xff5D73C3),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.white70.withOpacity(.5))
                                  ),
                                  child: Center(child: Text('Apply Now',style: TextStyle(color: Colors.white),)),
                                ),
                              )
                          )
                      ]),
                  ),
                  SizedBox(height: height*.025,),
                  MentorPageSteps(),
                  SizedBox(height: height*.025,),
                  SizedBox(
                    height: height*.13,
                    width: width*.8,
                    child: Text(
                        "SKIDO is an online automation that"
                        " improves your ability, skills & knowledge",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/MentorPage/ManishaBapna.png",scale:3.3),
                      Image.asset("assets/MentorPage/BillyVarghese.png",scale:3.3)
                  ],),
                  SizedBox(height: height*.05,),
                  SizedBox(
                    width: width*.94,
                    child: Text(
                      "Turn your passion to friendship, networking and a lot more",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: width*.84,
                    child: Text(
                      "Get connected to the biggest tech community in India, conduct events and share your expertise!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: width*.8,
                    child: Text(
                      "As a SKIDO mentor, you would be able to connect and collaborate with other SKIDO mentors on professional/personal projects. You would also get a podium to conduct your lectures with students on topics that you believe are important for the upcoming techies.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  SizedBox(height: height*.03,),
                  MentorCard(mentor: Mentor.mentorsList[0],),
                  SizedBox(height: height*.02,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.05),
                    child: Image.asset("assets/MentorPage/masterclasss_vector.png"),
                  ),
                  SizedBox(height: height*.02,),
                  MentorCard(mentor: Mentor.mentorsList[1],),
                  SizedBox(height: height*.02,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.05),
                    child: Image.asset("assets/MentorPage/build_brand_vector.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                        MentorReviewCard(mentee: Mentee.menteesList[0]),
                        MentorReviewCard(mentee: Mentee.menteesList[1])
                    ],
                  ),
                  SizedBox(height: height*.03,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.05),
                    child: Image.asset("assets/MentorPage/quotes.png"),
                  ),
                  SizedBox(height: height*.03,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width*.025),
                    child: Text(
                        "Team up with these amazing people",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FamousMentorCard(mentor: Mentor.mentorsList[2]),
                      FamousMentorCard(mentor: Mentor.mentorsList[3]),
                      FamousMentorCard(mentor: Mentor.mentorsList[4])
                    ],
                  ),
                  SizedBox(height: height*.1,),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
