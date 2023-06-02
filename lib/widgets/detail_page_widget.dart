
import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/Course.dart';
import 'checkout_button.dart';

class DetailPageUI extends StatefulWidget {
  const DetailPageUI({Key? key,required this.index}) : super(key: key);

  final int index;
  @override
  State<DetailPageUI> createState() => _DetailPageUIState();
}

class _DetailPageUIState extends State<DetailPageUI> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Stack(
        children:[
          Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_img.png'),
                  fit: BoxFit.cover,
                ),
              )
          ),
          // Positioned(
          //   top: height*.035,
          //   left: width*.35,
          //   child: Text('Check out',
          //   style: TextStyle(
          //       color: Colors.white,
          //       fontWeight: FontWeight.w600,
          //       fontSize: 25,
          //   ),),),
          Column(
            children: [
              SizedBox(height: height*.035,),

              Row(
                children: [
                  SizedBox(width: width*.03,),
                  Column(
                    children: [
                      SizedBox(height: height*.08,),
                      Image.asset(Course.courseList[widget.index].imageURL,scale:0.6,),
                    ],
                  ),
                  SizedBox(width: width*.03,),
                  Column(
                    children: [
                      SizedBox(height: 50,),
                      Text(Course.courseList[widget.index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.none
                        ),),
                      Text("by ${Course.courseList[widget.index].author}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.none
                        ),),
                      Row(
                        children: List.generate(5, (index) => Icon(
                          index < Course.courseList[widget.index].rating ? Icons.star : Icons.star_border,
                          size: 30,
                          color: index < Course.courseList[widget.index].rating ? Color(0xff5D73C3) : Colors.black38,
                        ),
                        ),
                      ),
                      SizedBox(height: 13,),
                      Text("Rs. ${Course.courseList[widget.index].price.toString()} /-",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16 ),),
                      SizedBox(height: 13,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 75,
                                height: 28,
                                color: Colors.transparent,
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
                                              Colors.white.withOpacity(0.08),
                                            ]
                                        ),
                                      ),
                                    ),
                                    BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaY: 3,
                                          sigmaX: 3,
                                        ),
                                        child:Center(child: Text("Add to cart",
                                          style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10,
                                              decoration: TextDecoration.none
                                          ),))
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              width: 75,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff5D73C3),
                              ),

                              child: Center(
                                child: Text('Buy Now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.none
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Course.courseList[widget.index].isFavorated=!Course.courseList[widget.index].isFavorated;
                              });
                            },
                            child: Icon(
                              Course.courseList[widget.index].isFavorated?
                              Icons.favorite:
                              Icons.favorite_border,
                              color: Course.courseList[widget.index].isFavorated?
                              Color(0xff5D73C3):Colors.white,
                            ),
                          ),
                        ],

                      ),

                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Text('About this course',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        decoration: TextDecoration.none,
                      fontFamily: 'Montserrat',
                    ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Container(
                    height: height*.26,
                    width: width*.9,
                    child: Flexible(
                      child: Text(Course.courseList[widget.index].description,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.none

                        ),),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Text('User Reviews',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.none
                    ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Container(
                    height: height*.1,
                    width:width*.8,
                    child: Flexible(
                      child: Text(Course.courseList[widget.index].userReview,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.none
                        ),),
                    ),
                  ),
                ],
              ),
              CheckoutButton()
            ],
          )
        ]
    );
  }
}
