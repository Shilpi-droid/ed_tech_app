
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../models/Communities.dart';
import '../../widgets/Community/CommunityCard.dart';

class Communities extends StatefulWidget {
  const Communities({Key? key,required this.name}) : super(key: key);

  final String name;
  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {

  var uuid=Uuid();
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
              child:

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height*.15,
                    decoration: BoxDecoration(
                        color: Color(0xff5F6097),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                            offset: Offset(0, 3), // Adjust the horizontal and vertical offset as needed
                          ),
                        ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                           IconButton(
                               onPressed: (){Navigator.pop(context);},
                               icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
                           )
                          ],
                        ),
                        SizedBox(height: height*.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children:[
                           Container(
                             height: 50,
                             width: 50,
                             decoration: BoxDecoration(
                                 color: Color(0XFFFBCD04),
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             child: Center(
                               child: Text(
                                 "DH",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 24,
                                   fontWeight: FontWeight.bold,),),
                             ),
                           ),
                           Container(
                             height: height*.05,
                             width: width*.75,
                              // color: Colors.orange,
                             child: TextField(
                               cursorColor: Colors.white,
                               decoration: InputDecoration(
                                 suffixIcon: Icon(Icons.search,color: Colors.white,size:40,),
                                 contentPadding: EdgeInsets.symmetric(vertical: 5),
                                 hintText: "Communities",
                                 hintStyle: TextStyle(
                                       color: Colors.white,
                                       fontSize: 24,
                                       fontWeight: FontWeight.bold,),
                                 border: OutlineInputBorder(
                                   borderSide: BorderSide.none,
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.transparent, width: 2),
                                 ),

                               ),
                             ),
                           ),


                           // Text(
                           //   "Communities",
                           //   style: TextStyle(
                           //     color: Colors.white,
                           //     fontSize: 24,
                           //     fontWeight: FontWeight.bold,),),
                          // SizedBox(width: width*.1,),
                           //IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size:30,))
                         ]
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.05,vertical: height*.02),
                    child: Row(children: [
                      Container(
                        height: 40,
                        width: 40   ,
                        decoration:BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Community/clapping_hands.png"),
                                fit:BoxFit.contain
                            )
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Your Communities",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),)

                    ],),
                  ),
                  SizedBox(
                    height:Community.yourCommunities().length * height*.122 ,
                    child:
                    // CommunityCard(
                    //   community: Community.yourCommunities()[0],
                    //   isYourCommunity: Community.yourCommunities()[0].isYourCommunity,
                    //   name:widget.name,
                    //   userId: uuid.v1(),
                    // ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Community.yourCommunities().length , // Number of items in the list
                      itemBuilder: (BuildContext context, int index) {
                        return CommunityCard(
                          community: Community.yourCommunities()[index],
                          isYourCommunity: Community.yourCommunities()[index].isYourCommunity,
                            name:widget.name,
                          userId: uuid.v1(),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:width*.05,vertical: height*.03),
                    child: Text("Communities to be a part of",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(
                    height:Community.notYourCommunities().length * height*.124 ,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Community.notYourCommunities().length , // Number of items in the list
                      itemBuilder: (BuildContext context, int index) {
                        return CommunityCard(
                            community: Community.notYourCommunities()[index],
                            isYourCommunity: Community.notYourCommunities()[index].isYourCommunity,
                            name:widget.name,
                            userId: uuid.v1(),
                        );
                      },
                    ),
                  ),
                ],
              )
          ),
        )
      ),
    );
  }
}
