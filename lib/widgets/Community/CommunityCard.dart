
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/Community/community_group.dart';
import '../../models/Communities.dart';

class CommunityCard extends StatelessWidget {
   CommunityCard({Key? key,required this.community,required this.isYourCommunity,required this.name,required this.userId}) : super(key: key);

  Community community;
  bool isYourCommunity;
  String name;
  String userId;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
            CommunityGroup(
              community: community,
              isYourCommunity: isYourCommunity,
              name:name,
              userId: userId,
            ))
        );
      },
      child: Container(
       padding: EdgeInsets.symmetric(horizontal: width*.05),
        height: height*.122,
        width: width,
        // color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //]] SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color:  Colors.white.withOpacity(.1),

                            ),
                          ),
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaY: 3,
                              sigmaX: 3,
                            ),
                            child:Center(child: FlutterLogo(size: 40,)),
                          )
                        ],
                      )

                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: isYourCommunity?width*.54:width*.47,
                    child: Text(
                      community.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                  // SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person,color: Colors.white,size: 20,),
                      SizedBox(width: 10,),
                      Text(
                          community.numberOfMembers.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 15),
                      )
                    ],
                  ),

                ],),
                // SizedBox(width: width*.01,),
                isYourCommunity?
               Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    :
                    Container(
                      width: width*.17,
                      height: height*.045,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo
                      ),
                      child: Center(
                        child: Text("Join",style: TextStyle(color: Colors.white,fontSize: 20),

                        ),
                      ),
                    )

              ],
            ),
            // SizedBox(height: 10,),
            Divider(thickness: 1,color: Colors.white,),
            // SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
