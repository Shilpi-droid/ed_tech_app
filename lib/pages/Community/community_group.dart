
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/Community/chat_body.dart';

import '../../models/Communities.dart';


class CommunityGroup extends StatefulWidget {
   CommunityGroup({Key? key,required this.community,required this.isYourCommunity,required this.name,required this.userId}) : super(key: key);

  Community community;
  bool isYourCommunity;
  final String name;
  final String userId;
  @override
  State<CommunityGroup> createState() => _CommunityGroupState();
}

class _CommunityGroupState extends State<CommunityGroup> with TickerProviderStateMixin{
  // int _selectedIndex = 0;
  // static  TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  //   List<Widget> _widgetOptions = <Widget>[
  //   ChatBody(community: community,isYourCommunity:isYourCommunity ,),
  //   Text(
  //     'Quiz',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Resources',
  //     style: optionStyle,
  //   ),
  //
  // ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Set the number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
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
        body: SafeArea(
            child:Column(
              children: [
                Row(children: [
                  IconButton(onPressed: (){Navigator.pop(context);},
                    icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
                )],),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //padding: ,
                      height: height*.08,
                      width: width*.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black38,
                        //     blurRadius: 4,
                        //     offset: Offset(0, 2), // Adjust the horizontal and vertical offset as needed
                        //   ),
                        // ],
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                                  borderRadius: BorderRadius.circular(15),
                                  color:  Colors.white.withOpacity(.3),

                                ),
                              ),
                              BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaY: 3,
                                  sigmaX: 3,
                                ),
                                child:Center(child: FlutterLogo(size: 50,)),
                              )
                            ],
                          )

                      ),
                    ),
                    SizedBox(width: width*.03,),
                    Container(
                      width:width*.58,
                      child: Text(
                        widget.community.name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                      ),
                    ),
                    // SizedBox(width: width*.01,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.white,))
                  ],
                ),
            SizedBox(height: height*.02,),
            Padding(
              padding:  EdgeInsets.only(left: width*.02,right: width*.02),
              child: TabBar(
                labelPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                indicator: BoxDecoration(
                  color: Color(0xff5F6097),
                  borderRadius: BorderRadius.circular(15)
                ),
                labelStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                controller: _tabController,
                tabs: [
                  Container(
                    width: 100.0,
                    child: Tab(text: 'Chat'),
                  ),
                  Container(
                    width: 100.0,
                    child: Tab(text: 'Quiz'),
                  ),
                  Container(
                    width: 180.0,
                    child: Tab(text: 'Resources'),
                  ),
                ],
              ),
            ),

              Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      // Contents of Tab 1
                      ChatBody(community: widget.community, isYourCommunity: widget.isYourCommunity,name: widget.name,userId: widget.userId,),
                      // Contents of Tab 2
                      Container(
                        child: Center(
                          child: Text('Tab 2',),
                        ),
                      ),
                      // Contents of Tab 3
                      Container(
                        child: Center(
                          child: Text('Tab 3'),
                        ),
                      ),
                    ],
                  ),
              )



              ],
            )

        ),
      ),
    );
  }
}
