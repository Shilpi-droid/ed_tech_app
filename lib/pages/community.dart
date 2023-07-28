import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/Config/config.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/connectcard.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

import '../models/connectusers.dart';
import '../models/Communities.dart';
import '../widgets/expcommcard.dart';
import 'Community/communities.dart';
import 'Community/community_group.dart';


class CommunityPage extends StatefulWidget {
  final String name;
  const CommunityPage({Key? key, required this.name}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  void getCurrentUserData() async {
    // var url = Uri.parse('http://192.168.0.137:3000/hello');
    // print('${widget.field}');
    var url =
    Uri.parse(someUsers);
    var response = await http.get(url);
    //print(response.statusCode);

    // decoding the response
    print((jsonDecode(response.body)).toString());
    setState(() {
      // converting response to string
      String dataString = (response.body).toString();

      // creating dynamic list from the response
      List<dynamic> connectUserList = (json
          .decode(dataString)
          .map((data) => ConnectUsers.fromJson(data))).toList();

      // converting dynamic list to list of type Doctor
      ConnectUsers.ConnectUsersList = connectUserList.cast<ConnectUsers>();
      print(ConnectUsers.ConnectUsersList[0].first_name);
    });
  }

  @override
  void initState() {
    print("ddd");
    getCurrentUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    List<Community> yourCommunities = Community.yourCommunities();
    var uuid=Uuid();
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('assets/elements/backg.png'),
        //   fit: BoxFit.cover,
        // )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     IconButton(
                  //       // padding: EdgeInsets.all(-1),
                  //       onPressed: (){
                  //         Navigator.pop(context);
                  //       },
                  //       icon: Icon(Icons.arrow_back_ios_rounded, size: 25, color: Colors.white,),
                  //     ),
                  //   ],
                  // ),
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
                              'Hi! '+widget.name,
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
                                  'Join our',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    //fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
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
                                fontSize: 24,
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
                          height: height*.05,
                          width: width*.53,
                          child: Container(
                            width: width*.53,
                            height: height*.05,
                            child: Expanded(
                              child: TextField(
                                  // obscureText: true,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.search,color: Colors.white,size: 16,),
                                      border: InputBorder.none,
                                      hintText: "Search Communities...",
                                      hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      )
                                  )
                              ),
                            ),
                          )
                      ),
                      Container(
                        height: 30,
                        width: width*.34,
                        decoration: BoxDecoration(
                          color: Color(0xff5D73C3).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color:Colors.white, width: 0.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 9, right: 9),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Start a community',
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
                  // SizedBox(height: 20,),
                  // Container(
                  //   width: width-30,
                  //   height: 115,
                  //   child: ListView(
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       Commcat(image: 'assets/Community/commcat1.png', text: 'Digital Marketing'),
                  //       SizedBox(width: 15),
                  //       Commcat(image: 'assets/Community/comcat2.png', text: 'Product Management'),
                  //       SizedBox(width: 15),
                  //       Commcat(image: 'assets/Community/comcat3.png', text: 'Data Science'),
                  //       SizedBox(width: 15),
                  //       Commcat(image: 'assets/Community/comcat4.png', text: 'Python'),
                  //     ],
                  //   ),
                  // ),
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
                    height: 105,
                    width: width-30,
                    child: ListView.builder(
                      itemCount: ConnectUsers.ConnectUsersList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) { return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ConnectCard(text: ConnectUsers.ConnectUsersList[index].first_name, image: 'assets/Community/connect1.png'),
                      ); },

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
                  SizedBox(
                    height: yourCommunities.length*.65*height*.25,
                    child: GridView.builder(
                      physics:NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: width*.04, // Spacing between columns
                        mainAxisSpacing: 15.0, // Spacing between rows
                        childAspectRatio: .9
                      ),
                      itemCount:yourCommunities.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              CommunityGroup(
                                community: yourCommunities[index],
                                isYourCommunity: true,
                                name:widget.name,
                                userId: uuid.v1(),
                              ))
                          );
                          },
                            child: ExploreCommunityCard(community: yourCommunities[index],)
                        );
                      },
                    ),
                  ),
                  SizedBox(height: height*.025,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Communities(name:widget.name)));
                    },
                    child: Container(
                      height: height*.05,
                      width: width*.4,
                      decoration: BoxDecoration(
                        color: Color(0xff5D73C3),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("View More",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: height*.05,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     GestureDetector(
                  //         onTap: (){
                  //           Navigator.push(context, MaterialPageRoute(
                  //               builder: (context) => Communities(name:widget.name)));
                  //         },
                  //         child: ExploreCommunityCard(text: 'Digital Marketing', image: 'assets/Community/expcom1.png')),
                  //     SizedBox(width: 15),
                  //     ExploreCommunityCard(text: 'Discussion in movie trailors', image: 'assets/Community/expcom2.png'),
                  //   ],
                  // ),



                  // SizedBox(height: 20),
                  // Text(
                  //   'Live discussion on bollywood\nmovies',
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Container(
                  //   height: 152,
                  //   width: width-30,
                  //   child: ListView(
                  //     shrinkWrap: true,
                  //       scrollDirection: Axis.horizontal,
                  //       children: [
                  //         LiveDiscussion(topic: 'Marketing of Movies', author: 'Emran Emon'),
                  //         SizedBox(width: 15),
                  //         LiveDiscussion(topic: 'C Language', author: 'Peter Emerson'),
                  //       ],
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  // Text(
                  //   "Today's task",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Container(
                  //           height: 70,
                  //           width: 70,
                  //           child: Image(
                  //             image: AssetImage('assets/Community/task1.png'),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     SizedBox(width: 30),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       //crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           "8 tasks today",
                  //           //textAlign: TextAlign.center,
                  //           style: GoogleFonts.montserrat(
                  //             color: Colors.white,
                  //             //fontFamily: "Montserrat",
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 18,
                  //           ),
                  //         ),
                  //         Text(
                  //           "Meet them and share your ideas",
                  //           //textAlign: TextAlign.center,
                  //           style: GoogleFonts.montserrat(
                  //             color: Colors.white,
                  //             //fontFamily: "Montserrat",
                  //             fontWeight: FontWeight.w400,
                  //             fontSize: 15,
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 10),
                  // Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Container(
                  //           height: 70,
                  //           width: 70,
                  //           child: Image(
                  //             image: AssetImage('assets/Community/task2.png'),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     SizedBox(width: 30),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       //crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           "Event",
                  //           //textAlign: TextAlign.center,
                  //           style: GoogleFonts.montserrat(
                  //             color: Colors.white,
                  //             //fontFamily: "Montserrat",
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 18,
                  //           ),
                  //         ),
                  //         Text(
                  //           "Create and share an event",
                  //           //textAlign: TextAlign.center,
                  //           style: GoogleFonts.montserrat(
                  //             color: Colors.white,
                  //             //fontFamily: "Montserrat",
                  //             fontWeight: FontWeight.w400,
                  //             fontSize: 15,
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 20),
                  // Text(
                  //   "Upcoming Topics",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     //fontFamily: "Montserrat",
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  // SizedBox(height: 10),
                  // Container(
                  //   height: 107,
                  //   width: width-30,
                  //   child: ListView(
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       UpcomingTopics(topic: 'Data Science', author: 'Rasyid Yilamn', date: 'February 27, 2023'),
                  //       SizedBox(width: 15),
                  //       UpcomingTopics(topic: 'Python', author: 'RViren Naidu', date: 'March 7, 2023'),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
