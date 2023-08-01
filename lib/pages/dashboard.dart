import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:skido/pages/8to12.dart';
import 'package:skido/pages/News/breaking_news.dart';
import 'package:skido/pages/apply_now_page.dart';
import 'package:skido/pages/notifications_page.dart';
import 'package:skido/pages/working%20professional/workingpf.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/pages/profile.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/division.dart';
import 'package:skido/widgets/ongoing.dart';

import 'News/discover_news.dart';
import 'community.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LandingPage extends StatefulWidget {
  final String name;



  const LandingPage({required this.name});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  void initState() {
    super.initState();
  }
  // String greeting = '';
  // String _generateGreeting() {
  //   if (widget.name != null) {
  //     return "Hi " + widget.name!;
  //   } else {
  //     return "Hi User";
  //   }
  // }



  Widget build(BuildContext context) {
    //String _greeting = _generateGreeting();
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: SingleChildScrollView(
    //       child: Padding(
    //         padding: EdgeInsets.all(15.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             // First row with text and notification icon
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text("Hi "+widget.name, style: GoogleFonts.montserrat(
    //                   color: Colors.white,
    //                   //fontFamily: "Montserrat",
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 25,
    //                 ),),
    //
    //                 Row(
    //                   children: [
    //                     GestureDetector(
    //                         onTap: (){
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(builder: (context) =>  ProfilePage()),
    //                           );
    //                         },
    //                         child: Icon(Icons.person_rounded, size: 25, color: Colors.white,)
    //                     ),
    //                     GestureDetector(
    //                         onTap: (){
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(builder: (context) =>  CommunityPage(name: widget.name,)),
    //                           );
    //                         },
    //                         child: Icon(Icons.post_add,  size: 25, color: Colors.white, )
    //                     ),
    //                     GestureDetector(
    //                         onTap: ()
    //                         {
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(builder: (context) =>  NotificationsPage()),
    //                           );
    //                         },
    //                         child: Icon(Icons.notifications,  size: 25, color: Colors.white,)),
    //                   ],
    //                 )
    //               ],
    //             ),
    //             SizedBox(height: 10.0),
    //             // Second row with a widget (SizedBox)
    //             Stack(
    //               children: [
    //                 CardUI(
    //                   height: 170,
    //                   width: width-30,
    //                   child: Text(
    //                     'Together we can do\ngreat things',
    //                     textAlign: TextAlign.left,
    //                     style: GoogleFonts.cormorantUpright(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 30,
    //                     ),
    //
    //                   ),
    //                 ),
    //                 Align(
    //                   alignment: AlignmentDirectional.topEnd,
    //                   child: Container(
    //                     height: 165,
    //                     //alignment: Alignment.center,
    //                     child: Image(image: AssetImage('assets/Landing_page/people1.png'),fit: BoxFit.cover),
    //                   ),
    //                 ),
    //                 Container(
    //                   padding: EdgeInsets.only(left:15),
    //                   height: 160,
    //                   child: Align(
    //                     alignment: AlignmentDirectional.bottomStart,
    //                     child: Text(
    //                       'Join Us >',
    //                       //textAlign: TextAlign.left,
    //                       style: GoogleFonts.montserrat(
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 20,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //
    //
    //                 // Container(
    //                 //   width: 250,
    //                 //   height: 250,
    //                 //   color: Colors.amberAccent,
    //                 // ),
    //                 // Positioned( //<-- SEE HERE
    //                 //   right: 0,
    //                 //   top: 15,
    //                 //   child: Container(
    //                 //     width: 230,
    //                 //     height: 230,
    //                 //     color: Colors.deepPurpleAccent,
    //                 //   ),
    //                 // ),
    //               ],
    //             ),
    //             SizedBox(height: 20.0),
    //             // Third row with curved search bar
    //             SearchCardUI(
    //               width: width-30,
    //               height: 50,
    //               child: Container(
    //                 color: Colors.transparent,
    //                 width: width-30,
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Icon(Icons.search, color: Colors.white, size: 25,),
    //                     SizedBox(
    //                       height: 50,
    //                       width: width*0.7,
    //                       child: Center(
    //                         child: TextField(
    //                           obscureText: true,
    //                           decoration: InputDecoration(
    //                             border: InputBorder.none,
    //                             labelText: "Search",
    //                             labelStyle: GoogleFonts.montserrat(
    //                               color: Colors.white,
    //                               fontSize: 18,
    //                               fontWeight: FontWeight.w400,
    //                             )
    //                             )
    //                           ),
    //                       ),
    //                       ),
    //
    //                     Icon(Icons.filter_alt_rounded,color: Colors.white, size: 25),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             // SearchCardUI(
    //             //   height: 50,
    //             //   width: width-30,
    //             //   child: Container(
    //             //     decoration: BoxDecoration(
    //             //       color: Colors.transparent,
    //             //       borderRadius: BorderRadius.circular(50.0),
    //             //     ),
    //             //     padding: EdgeInsets.symmetric(horizontal: 10.0),
    //             //     child: Row(
    //             //       children: [
    //             //         Icon(Icons.search),
    //             //         SizedBox(width: 10.0),
    //             //         Expanded(
    //             //           child: TextField(
    //             //             maxLines: 2,
    //             //             decoration: InputDecoration(
    //             //               hintText: 'Search',
    //             //               border: InputBorder.none,
    //             //             ),
    //             //           ),
    //             //         ),
    //             //         Icon(Icons.filter_list),
    //             //       ],
    //             //     ),
    //             //   ),
    //             // ),
    //             SizedBox(height: 20.0),
    //             // Fourth row with category text
    //             Center(child: Text('Category',
    //               style: GoogleFonts.montserrat(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 25,
    //               ),
    //             ),
    //             ),
    //             SizedBox(height: 10.0),
    //             // Container(
    //             //   height: 100,
    //             //     width: 100,
    //             //     child: Division(
    //             //         imageUrl: 'assets/Landing_page/review.png',
    //             //         text: 'HI')
    //             // ),
    //             Container(
    //               height:170,
    //               width: width-30,
    //               child: ListView(
    //                   shrinkWrap: true,
    //                   scrollDirection: Axis.horizontal,
    //                   children: [
    //                     GestureDetector(
    //                         onTap: (){
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(builder: (context) =>  WorkingProf()),
    //                           );
    //                         },
    //                         child: Division(imageUrl: 'assets/Landing_page/workpf.png', div: 'Working\nProfessionals', descp: 'Choose your ideal\nstream & subjects.',)
    //                     ),
    //                     SizedBox(width: 10),
    //                     GestureDetector(
    //                         onTap: (){
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(builder: (context) =>  ApplyNowPage()),
    //                           );
    //                         },
    //                         child: Division(imageUrl: 'assets/Landing_page/college.png', div: 'College', descp: 'Choose your ideal\nstream & subjects.',)
    //                     ),
    //                     SizedBox(width: 10),
    //                     Division(imageUrl: 'assets/Landing_page/10-11.png', div: '10th-12th', descp: 'Choose your ideal\nstream & subjects.',),
    //                     SizedBox(width: 10),
    //                     GestureDetector(
    //                         onTap: (){
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(builder: (context) =>  Eightto12()),
    //                           );
    //                         },
    //                         child: Division(imageUrl: 'assets/Landing_page/8-9.png', div: '8th-9th', descp: 'Choose your ideal\nstream & subjects.',)
    //                     ),
    //                   ]
    //               ),
    //             ),
    //             SizedBox(height: 20.0),
    //             Center(child: Text('Ongoing events',
    //               style: GoogleFonts.montserrat(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 25,
    //               ),
    //             ),
    //             ),
    //             SizedBox(height: 10.0),
    //             GestureDetector(
    //                 onTap: (){
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(builder: (context) => DiscoverNews()
    //                         // DiscoverNews()
    //                     ),
    //                   );
    //                 },
    //                 child: Ongoing(logoImage: 'assets/Landing_page/mainlogo.png', heading: 'Upskill and Learn Coding', description: 'Learn the art of coding', eventImage: 'assets/Landing_page/ong1.png')),
    //
    //             // SizedBox(
    //             //   width: 200.0,
    //             //   height: 100.0,
    //             //   child: Container(
    //             //     color: Colors.green,
    //             //   ),
    //             // ),
    //             SizedBox(height: 20.0),
    //             Center(child: Text("Most reliable career\nguidance platform",
    //               textAlign: TextAlign.center,
    //               style: GoogleFonts.montserrat(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 25,
    //               ),
    //             ),
    //             ),
    //             SizedBox(height:10),
    //             Container(
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(30),
    //                 color: Colors.transparent,
    //               ),
    //               height: 200,
    //                 child: ClipRRect(
    //                   borderRadius: BorderRadius.circular(30),
    //                     child: YoutubeVideoPlayer(videoUrl: 'https://www.youtube.com/watch?v=kvh3qBOjzmo&ab_channel=TalentServe'),
    //                 )
    //             ),
    //             SizedBox(height: 20.0),
    //             Center(child: Text("Here's why they love SKIDO",
    //               textAlign: TextAlign.center,
    //               style: GoogleFonts.montserrat(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 25,
    //               ),
    //             ),
    //             ),
    //             SizedBox(height: 10),
    //             Container(
    //               height:220,
    //               width: width-30,
    //               child: ListView(
    //                   shrinkWrap: true,
    //                   scrollDirection: Axis.horizontal,
    //                   children: [
    //                     Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
    //                     SizedBox(width: 10),
    //                     Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
    //                     SizedBox(width: 10),
    //                     Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
    //                     SizedBox(width: 10),
    //                     Division1(imageUrl: 'assets/Landing_page/review.png', div: 'Vedant Bajpai', descp: '“My experience with SKIDO was awesome, I came to know the best field for me & the best future careers so the confusion got clear.”', bio: 'Class 9, CIS School, Bhopal',),
    //                   ]
    //               ),
    //             ),
    //             SizedBox(height: 20),
    //             Center(child: Text("Meet our Mentors",
    //               textAlign: TextAlign.center,
    //               style: GoogleFonts.montserrat(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 25,
    //               ),
    //             ),
    //             ),
    //             SizedBox(height: 10),
    //             MentorCard(
    //                 imageUrl: 'assets/Landing_page/mentor.png',
    //                 div: 'Vishvedu Shastri',
    //                 descp: 'Vishvendu is a career counsellor & foreignsic psychologist. He is a mentor & counselor at Skill India Organization. He has also worked at Tihar Jail as a prisoner’s counselor. He has his own mentoring setup in mumbai and also guides students in discovering their ideal career matches with SKIDO.'
    //             ),
    //
    //
    //             // Sixth row with the YouTube video card
    //             // VideoCard(
    //             //   videoUrl: 'your_video_url',
    //             //   thumbnailUrl: 'your_thumbnail_url',
    //             // ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child:Text("Coming soon!",
        style: GoogleFonts.montserrat(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 25,
    ),)
      ),
    );
  }
}

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



