
import 'package:flutter/material.dart';
import 'package:skido/pages/Mentor/TopMentor.dart';
import 'package:skido/pages/Mentor/availability.dart';
import 'package:skido/widgets/Mentor/timeline.dart';


import '../../models/Experience.dart';

class MentorProfile extends StatefulWidget {
  const MentorProfile({Key? key,required this.mentor}) : super(key: key);

  final TopMentor mentor;
  @override
  State<MentorProfile> createState() => _MentorProfileState();
}

class _MentorProfileState extends State<MentorProfile>  with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    TabController _tabController=TabController(length: 2, vsync: this);
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
            child: Stack(
              children: [
                Container(
                    height: height,
                    width: width,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/elements/backg.png'),
                        fit: BoxFit.cover,
                      ),
                    )

                ),
                Positioned(
                  top: -height*.07,
                  child: Container(
                    height: height*.6,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/MentorPage/profilebg.png"),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                ),
                Positioned(
                    top:height*.1,
                    left: width*.25,
                    child: Container(
                      height: height*.35,
                      width: width*.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.mentor.pfp),
                              fit: BoxFit.contain
                          )
                      ),
                    )
                ),
                Positioned(
                    top:height*.36,
                    left: width*.1,
                    child: Container(
                      height: height*.21,
                      width: width*.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height*.01,),
                          Text(widget.mentor.name,
                            style: TextStyle(
                                color: Color(0xff5F6097),
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(height: height*.015,),
                          Text(widget.mentor.experience[widget.mentor.experience.length-1].jobTitle,
                            style: TextStyle(
                              color: Color(0xff5F6097),
                              fontSize: 20,
                            ),),
                          SizedBox(height: height*.01,),
                          Text("${widget.mentor.followers} followers",
                            style: TextStyle(
                                color: Color(0xff5F6097),
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Availability()),
                                    );
                                  },
                                  child: Container(

                                    height: height*.06,
                                    width: width*.37,
                                    decoration: BoxDecoration(
                                        color: Color(0xff5D73C3),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.calendar_month,color: Colors.white,),
                                        Text("Availability",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft:  Radius.circular(15),
                                        bottomLeft:  Radius.circular(15),
                                      ),
                                      color:Color(0xff50518F)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Icon(Icons.message,color: Colors.white,size: 15,),
                                  ),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft:  Radius.circular(15),
                                      bottomLeft:  Radius.circular(15),
                                    ),
                                    color:Color(0xff50518F)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green
                                    ),
                                    child: Icon(Icons.call,color: Colors.white,size: 12,),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
                Positioned(
                  bottom: height*.018,
                  left: width*.05,
                  child: Container(
                    height: height*.37,
                    width:width*.9,
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2  ,
                          labelStyle: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                          unselectedLabelStyle: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),
                          //indicator: BoxDecoration(),
                          tabs: [
                            Tab(
                              text: 'Experience',
                            ),
                            Tab(
                              text: 'Reviews',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              SingleChildScrollView(

                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    TimelineWidget(exp: Experience.expList1[0]),
                                    TimelineWidget(exp: Experience.expList1[1]),
                                    TimelineWidget(exp: Experience.expList1[2]),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text(''),
                              ),
                            ],
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
      ),
    );
  }
}


