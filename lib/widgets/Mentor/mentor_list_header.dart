
import 'dart:ui';

import 'package:flutter/material.dart';

class MentorListHeader extends StatelessWidget {
  const MentorListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.32,
      width: width*.9,
        decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.4)),
    borderRadius: BorderRadius.circular(15),),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(0.02),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:Column(
                  children: [
                    SizedBox(height: height*.02,),
                    SearchBar(),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 10),
                              child: Container(
                                  height: height*.15,
                                  width: width*.47,
                                  decoration:BoxDecoration(
                                      image:DecorationImage(
                                          image:AssetImage("assets/MentorPage/mentorlist_headertxt.png"),
                                        fit: BoxFit.cover
                                      )
                                  )
                              ),
                            ),

                            Row(
                              children: [
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
                                  child: Center(child: Text("Learn More",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                                ),
                                SizedBox(width: width*.1,)
                              ],
                            )
                          ],
                        ),
                        Container(
                            height: height*.18,
                            width: width*.35,
                            decoration:BoxDecoration(
                                image:DecorationImage(
                                    image:AssetImage("assets/MentorPage/mentorlist_headerimg.png"),
                                    fit: BoxFit.fill
                                )
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )

      ),
    );
  }
}


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.04,
      width: width*.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border:Border.all(color: Colors.white.withOpacity(.7)),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(0.0),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixIcon:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.filter_alt_rounded,color: Colors.white,),
                        SizedBox(width: 5),
                        Icon(Icons.mic_none_rounded,color: Colors.white),
                        SizedBox(width: 5),
                      ],
                    ),
                    hintText: "Search for mentor..",
                    hintStyle: TextStyle(color: Colors.white),

                    contentPadding: EdgeInsets.symmetric(vertical:2,horizontal: 10),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                    ),
                  ),
                  maxLines: 1,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              )
            ],
          )

      ),
    );
  }
}
