// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:skido/pages/profile.dart';
// import 'package:skido/widgets/awards.dart';
// import 'package:skido/widgets/categories.dart';
// import 'package:skido/widgets/progresscard.dart';
// import 'package:skido/widgets/timeline.dart';
// import 'package:skido/widgets/upcomingev.dart';
//
// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);
//
//   @override
//   State<Dashboard> createState() => _DashboardState();
// }
//
// class _DashboardState extends State<Dashboard> {
//   @override
//
//   Widget build(BuildContext context) {
//     final height=MediaQuery.of(context).size.height;
//     final width=MediaQuery.of(context).size.width;
//     return Container(
//       // height: double.maxFinite,
//       // decoration: BoxDecoration(
//       //   image: DecorationImage(
//       //     image: AssetImage('assets/Landing_page/backg.png'),
//       //     fit: BoxFit.cover,
//       //   ),
//       // ),
//       child: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.all(15),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,),
//                     SizedBox(width: width*0.6685),
//                     Icon(Icons.chat, size: 25, color: Colors.white,),
//                     Icon(Icons.notifications, size: 25, color: Colors.white,),
//                     GestureDetector(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ProfilePage()),
//                         );
//                       },
//                         child: Icon(Icons.person_rounded, size: 25, color: Colors.white,)
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Container(
//                       height: 250,
//                       width: width-30,
//                       child: ListView(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         children: [
//                           CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "UI/UX", ),
//                           SizedBox(width: 5),
//                           CustomCard(title: 'Your Progress', marksObtained: 70, marksTotal: 100, courseName: "DBMS", ),
//                           SizedBox(width: 5),
//                           CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "OS", ),
//                           SizedBox(width: 5),
//                           CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "COA", ),
//                           SizedBox(width: 5),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   height: 168,
//                   width: width-30,
//                   child: ListView(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       AwardCard(currentLevelNo: 72, totalNoOfLevels: 90),
//                       SizedBox(width: 5),
//                       AwardCard(currentLevelNo: 62, totalNoOfLevels: 90),
//                       SizedBox(width: 5),
//                       AwardCard(currentLevelNo: 32, totalNoOfLevels: 90),
//                       SizedBox(width: 5),
//                       AwardCard(currentLevelNo: 42, totalNoOfLevels: 90),
//                       SizedBox(width: 5),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Container(
//                   height:62,
//                   // width: width-30,
//                   child: ListView(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Categories(text: "Design"),
//                       SizedBox(width: 25),
//                       Categories(text: "Marketing"),
//                       SizedBox(width: 25),
//                       Categories(text: "Sales"),
//                       SizedBox(width: 25),
//                       Categories(text: "Trade"),
//                       SizedBox(width: 25),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Container(
//                   height:151,
//                   // width: width-30,
//                   child: ListView(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Timeline(date: "1st December", text: "3D illustration in Web Design"),
//                       SizedBox(width: 10),
//                       Timeline(date: "6th December", text: "Glassmorphism trend, how long will it exist"),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height:20),
//                 Center(
//                   child: Text("Upcoming Events",
//                     style: GoogleFonts.montserrat(
//                       color: Colors.white,
//                       //fontFamily: "Montserrat",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height:20),
//                 Container(
//                   height:280,
//                   width: width-30,
//                   child: ListView(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       UpcomingEvent(
//                           logoImage: 'assets/Landing_page/mainlogo.png',
//                           heading: "Ask a digital marketing pro",
//                           description: "Get your digital marketing questions answered by an industry expert",
//                           status: "LIVE",
//                           dayDate: "Wednesday, 17th June 2023",
//                           time: "11am-2pm",
//                           eventImage: 'assets/Landing_page/upceve1.png')
//                       // SizedBox(width: 10),
//                       // Timeline(date: "6th December", text: "Glassmorphism trend, how long will it exist"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


//return Scaffold(
//       body: Container(
//         height: double.maxFinite,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/Landing_page/backg.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: SafeArea(
//             child: Padding(
//               padding: EdgeInsets.all(15),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,),
//                       SizedBox(width: width*0.6685),
//                       Icon(Icons.chat, size: 25, color: Colors.white,),
//                       Icon(Icons.notifications, size: 25, color: Colors.white,),
//                       Icon(Icons.person_rounded, size: 25, color: Colors.white,)
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Container(
//                         height: 250,
//                         width: width-30,
//                         child: ListView(
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           children: [
//                             CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "UI/UX", ),
//                             SizedBox(width: 5),
//                             CustomCard(title: 'Your Progress', marksObtained: 70, marksTotal: 100, courseName: "DBMS", ),
//                             SizedBox(width: 5),
//                             CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "OS", ),
//                             SizedBox(width: 5),
//                             CustomCard(title: 'Your Progress', marksObtained: 60, marksTotal: 100, courseName: "COA", ),
//                             SizedBox(width: 5),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     height: 168,
//                     width: width-30,
//                     child: ListView(
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         AwardCard(currentLevelNo: 72, totalNoOfLevels: 90),
//                         SizedBox(width: 5),
//                         AwardCard(currentLevelNo: 62, totalNoOfLevels: 90),
//                         SizedBox(width: 5),
//                         AwardCard(currentLevelNo: 32, totalNoOfLevels: 90),
//                         SizedBox(width: 5),
//                         AwardCard(currentLevelNo: 42, totalNoOfLevels: 90),
//                         SizedBox(width: 5),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     height:62,
//                     // width: width-30,
//                     child: ListView(
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         Categories(text: "Design"),
//                         SizedBox(width: 25),
//                         Categories(text: "Marketing"),
//                         SizedBox(width: 25),
//                         Categories(text: "Sales"),
//                         SizedBox(width: 25),
//                         Categories(text: "Trade"),
//                         SizedBox(width: 25),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     height:151,
//                     // width: width-30,
//                     child: ListView(
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         Timeline(date: "1st December", text: "3D illustration in Web Design"),
//                         SizedBox(width: 10),
//                         Timeline(date: "6th December", text: "Glassmorphism trend, how long will it exist"),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height:20),
//                   Center(
//                     child: Text("Upcoming Events",
//                       style: GoogleFonts.montserrat(
//                         color: Colors.white,
//                         //fontFamily: "Montserrat",
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height:20),
//                   Container(
//                     height:280,
//                     width: width-30,
//                     child: ListView(
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         UpcomingEvent(
//                             logoImage: 'assets/Landing_page/mainlogo.png',
//                             heading: "Ask a digital marketing pro",
//                             description: "Get your digital marketing questions answered by an industry expert",
//                             status: "LIVE",
//                             dayDate: "Wednesday, 17th June 2023",
//                             time: "11am-2pm",
//                             eventImage: 'assets/Landing_page/upceve1.png')
//                         // SizedBox(width: 10),
//                         // Timeline(date: "6th December", text: "Glassmorphism trend, how long will it exist"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );

import 'package:flutter/material.dart';
import 'package:skido/pages/8to12.dart';
import 'package:skido/pages/working%20professional/workingpf.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/pages/profile.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/division.dart';
import 'package:skido/widgets/ongoing.dart';

import 'community.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First row with text and notification icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hi Dianne', style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),

                    Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ProfilePage()),
                              );
                            },
                            child: Icon(Icons.person_rounded, size: 25, color: Colors.white,)
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Community()),
                              );
                            },
                            child: Icon(Icons.post_add,  size: 25, color: Colors.white, )
                        ),
                        Icon(Icons.notifications,  size: 25, color: Colors.white,),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                // Second row with a widget (SizedBox)
                Stack(
                  children: [
                    CardUI(
                      height: 170,
                      width: width-30,
                      child: Text(
                        'Together we can do\ngreat things',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.cormorantUpright(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),

                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        height: 165,
                        //alignment: Alignment.center,
                        child: Image(image: AssetImage('assets/Landing_page/people1.png'),fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:15),
                      height: 160,
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Text(
                          'Join Us >',
                          //textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),


                    // Container(
                    //   width: 250,
                    //   height: 250,
                    //   color: Colors.amberAccent,
                    // ),
                    // Positioned( //<-- SEE HERE
                    //   right: 0,
                    //   top: 15,
                    //   child: Container(
                    //     width: 230,
                    //     height: 230,
                    //     color: Colors.deepPurpleAccent,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 20.0),
                // Third row with curved search bar
                SearchCardUI(
                  width: width-30,
                  height: 50,
                  child: Container(
                    color: Colors.transparent,
                    width: width-30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: Colors.white, size: 25,),
                        SizedBox(
                          height: 50,
                          width: width*0.7,
                          child: Center(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Search",
                                labelStyle: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                )
                                )
                              ),
                          ),
                          ),

                        Icon(Icons.filter_alt_rounded,color: Colors.white, size: 25),
                      ],
                    ),
                  ),
                ),
                // SearchCardUI(
                //   height: 50,
                //   width: width-30,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.transparent,
                //       borderRadius: BorderRadius.circular(50.0),
                //     ),
                //     padding: EdgeInsets.symmetric(horizontal: 10.0),
                //     child: Row(
                //       children: [
                //         Icon(Icons.search),
                //         SizedBox(width: 10.0),
                //         Expanded(
                //           child: TextField(
                //             maxLines: 2,
                //             decoration: InputDecoration(
                //               hintText: 'Search',
                //               border: InputBorder.none,
                //             ),
                //           ),
                //         ),
                //         Icon(Icons.filter_list),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(height: 20.0),
                // Fourth row with category text
                Center(child: Text('Category',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ),
                SizedBox(height: 10.0),
                // Container(
                //   height: 100,
                //     width: 100,
                //     child: Division(
                //         imageUrl: 'assets/Landing_page/review.png',
                //         text: 'HI')
                // ),
                Container(
                  height:160,
                  width: width-30,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Eightto12()),
                              );
                            },
                            child: Division(imageUrl: 'assets/Landing_page/8-9.png', div: '8th-9th', descp: 'Choose your ideal\nstream & subjects.',)
                        ),
                        SizedBox(width: 10),
                        Division(imageUrl: 'assets/Landing_page/10-11.png', div: '10th-12th', descp: 'Choose your ideal\nstream & subjects.',),
                        SizedBox(width: 10),
                        Division(imageUrl: 'assets/Landing_page/college.png', div: 'College', descp: 'Choose your ideal\nstream & subjects.',),
                        SizedBox(width: 10),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  WorkingProf()),
                              );
                            },
                            child: Division(imageUrl: 'assets/Landing_page/workpf.png', div: 'Working\nProfessionals', descp: 'Choose your ideal\nstream & subjects.',)
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 20.0),
                Center(child: Text('Ongoing events',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ),
                SizedBox(height: 10.0),
                Ongoing(logoImage: 'assets/Landing_page/mainlogo.png', heading: 'Upskill and Learn Coding', description: 'Learn the art of coding', eventImage: 'assets/Landing_page/ong1.png'),

                // SizedBox(
                //   width: 200.0,
                //   height: 100.0,
                //   child: Container(
                //     color: Colors.green,
                //   ),
                // ),
                SizedBox(height: 20.0),
                Center(child: Text("Most reliable career\nguidance platform",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ),
                SizedBox(height:10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                  ),
                  height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                        child: YoutubeVideoPlayer(videoUrl: 'https://youtu.be/ApXoWvfEYVU')
                    )
                ),
                SizedBox(height: 20.0),
                Center(child: Text("Here's why they love SKIDO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ),
                SizedBox(height: 10),
                Container(
                  height:180,
                  width: width-30,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
                        SizedBox(width: 10),
                        Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
                        SizedBox(width: 10),
                        Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
                        SizedBox(width: 10),
                        Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
                      ]
                  ),
                ),
                SizedBox(height: 20),
                Center(child: Text("Meet our Mentors",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ),
                SizedBox(height: 10),
                MentorCard(
                    imageUrl: 'assets/Landing_page/mentor.png',
                    div: 'Vishvedu Shastri',
                    descp: 'Vishvendu is a career counsellor & foreignsic psychologist. He is a mentor & counselor at Skill India Organization. He has also worked at Tihar Jail as a prisoner’s counselor. He has his own mentoring setup in mumbai and also guides students in discovering their ideal career matches with SKIDO.'
                ),


                // Sixth row with the YouTube video card
                // VideoCard(
                //   videoUrl: 'your_video_url',
                //   thumbnailUrl: 'your_thumbnail_url',
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//
// class VideoCard extends StatefulWidget {
//   final String videoUrl;
//   final String thumbnailUrl;
//
//   VideoCard({required this.videoUrl, required this.thumbnailUrl});
//
//   @override
//   _VideoCardState createState() => _VideoCardState();
// }
//
// class _VideoCardState extends State<VideoCard> {
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl.toString()),
//       flags: YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return Dialog(
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 height: MediaQuery.of(context).size.height * 0.4,
//                 child: YoutubePlayer(
//                   controller: _controller,
//                   showVideoProgressIndicator: true,
//                   progressIndicatorColor: Colors.amber,
//                   progressColors: ProgressBarColors(
//                     playedColor: Colors.amber,
//                     handleColor: Colors.amberAccent,
//                   ),
//                   onReady: () {
//                     _controller.play();
//                   },
//                 ),
//               ),
//             );
//           },
//         );
//       },
//       child: Card(
//         child: Stack(
//           children: [
//             Image.network(
//               widget.thumbnailUrl,
//               fit: BoxFit.cover,
//             ),
//             Positioned.fill(
//               child: Icon(
//                 Icons.play_circle_fill,
//                 color: Colors.white,
//                 size: 50.0,
//               ),
//               //alignment: Alignment.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// Text(
//                               'Scroll Across to find a\nsuitable language',
//                               textAlign: TextAlign.left,
//                               style: GoogleFonts.montserrat(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                               ),
//                             ),



class YoutubeVideoPlayer extends StatelessWidget {
  final String videoUrl;

  YoutubeVideoPlayer({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl) ?? '',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}



//Stack(
//                   children: [
//                     CardUI(
//                       height: 160,
//                       width: width-30,
//                       child: Column(
//                         children: [
//                           Column(
//                             children: [
//                               SizedBox(width: width*0.5),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 'Vishvedu Shastri',
//                                 textAlign: TextAlign.left,
//                                 style: GoogleFonts.montserrat(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                 ),
//
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Align(
//                       alignment: AlignmentDirectional.topStart,
//                       child: Container(
//                         height: 160,
//                         width: 130,
//                         //alignment: Alignment.center,
//                         child: Image(image: AssetImage('assets/Landing_page/mentor.png'),fit: BoxFit.cover),
//                       ),
//                     ),
//                     // Container(
//                     //   padding: EdgeInsets.only(left:15),
//                     //   height: 160,
//                     //   child: Align(
//                     //     alignment: AlignmentDirectional.bottomStart,
//                     //     child: Text(
//                     //       'Join Us',
//                     //       //textAlign: TextAlign.left,
//                     //       style: GoogleFonts.montserrat(
//                     //         color: Colors.white,
//                     //         fontWeight: FontWeight.bold,
//                     //         fontSize: 20,
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//
//
//                     // Container(
//                     //   width: 250,
//                     //   height: 250,
//                     //   color: Colors.amberAccent,
//                     // ),
//                     // Positioned( //<-- SEE HERE
//                     //   right: 0,
//                     //   top: 15,
//                     //   child: Container(
//                     //     width: 230,
//                     //     height: 230,
//                     //     color: Colors.deepPurpleAccent,
//                     //   ),
//                     // ),
//                   ],
//                 ),