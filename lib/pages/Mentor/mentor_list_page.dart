
import 'package:flutter/material.dart';
import 'package:skido/pages/Mentor/TopMentor.dart';
import '../../widgets/Mentor/mentor_list_header.dart';
import '../../widgets/Mentor/mentorlist_card.dart';
import '../MentorComm/recharge_page.dart';
import 'mentor_profile_page.dart';

class MentorListPage extends StatefulWidget {
  const MentorListPage({Key? key}) : super(key: key);

  @override
  State<MentorListPage> createState() => _MentorListPageState();
}

class _MentorListPageState extends State<MentorListPage> {
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0,left: 20,right: 20),
                  child: Container(
                    height: height*.1 ,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Hi! Dianne",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight:FontWeight.bold
                              ),),
                            Text(
                              "Find your Ideal Mentor",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),)
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: height*.01,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RechargePage()),
                                );
                              },
                              child: Container(
                                height: height*.055,
                                width: width*.38,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(
                                  child: Text(
                                    "Recharge",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                MentorListHeader(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height*.02),
                  child: Text(
                    "Top Mentor",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MentorProfile(mentor: TopMentor.topMentorList[0],)),
                          );
                        },
                        child: MentorListCard(mentor:TopMentor.topMentorList[0])
                    ),
                    MentorListCard(mentor:TopMentor.topMentorList[1]),
                  ],
                ),
                SizedBox(height: height*.015,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MentorListCard(mentor:TopMentor.topMentorList[2]),
                    MentorListCard(mentor:TopMentor.topMentorList[3]),
                  ],
                ),
                SizedBox(height: height*.015,),
                Container(
                  height: height*.05,
                  width: width*.35,
                  decoration: BoxDecoration(
                    color: Color(0xff5D73C3),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          0.0,
                          3.0,
                        ),
                      )
                    ],
                  ),
                  child: Center(child: Text("Show all",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                ),
                SizedBox(height: height*.015,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
