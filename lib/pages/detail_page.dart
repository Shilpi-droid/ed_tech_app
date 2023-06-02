
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:skido/pages/payment_details_page.dart';

import '../models/Course.dart';
import '../widgets/course_module.dart';
import '../widgets/detail_tile.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key,required this.index}) : super(key: key);

  final int index;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return
      Scaffold(
      body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/elements/backg.png'),
              fit: BoxFit.cover,
            ),
          ),
        child: SingleChildScrollView(
          child: Column(
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
                          fontFamily: 'Montesserrat'
                      ),),
                      Text("by ${Course.courseList[widget.index].author}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
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
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16 ),),
                      SizedBox(height: 13,),
                      Row(
                        children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                              border:Border.all(color: Colors.white.withOpacity(0.6)),
                              borderRadius: BorderRadius.circular(15),),
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
                                                Colors.white.withOpacity(.4),
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
                                          child:Center(child: Text("Add to cart",
                                            style: TextStyle(color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10),))
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                          ),
                        ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>
                                      PaymentDetails(page: DetailPage(index: widget.index,))),
                              );
                            },
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
                                        fontWeight: FontWeight.w600)),
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
              SizedBox(
                height: height*.17,
                child: Row(
                  children: [
                    SizedBox(width: width*.15,),
                    DetailTile(imgUrl:"assets/elements/star.png",text: "4.8/5",),
                    SizedBox(width: width*.05,),
                    DetailTile(imgUrl:"assets/elements/comment.png",text: "120",),
                    SizedBox(width: width*.05,),
                    DetailTile(imgUrl:"assets/elements/share.png",text: "1.2K",),
                    SizedBox(width: width*.15,),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Text('About this course',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        decoration: TextDecoration.underline
                    ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Container(
                   // height: height*.26,
                    width: width*.85,
                    child: ReadMoreText(
                      Course.courseList[widget.index].description,
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      style:  TextStyle(
                        // overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: 'Montserrat'
                      ),
                      trimExpandedText: "Show less",
                      trimCollapsedText: "Read More",
                      lessStyle: TextStyle(
                        // overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'Montserrat'
                      ),
                      moreStyle:TextStyle(
                        // overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'Montserrat'
                      ) ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                children: [
                  SizedBox(width: width*.07,),
                  Text('Course module',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        decoration: TextDecoration.underline
                    ),),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                  children:[
                    CourseModule(
                      index: 1,
                      title: 'Python Introduction',
                      watchtime:' 54 min 32 sec',
                      percentage: 85,
                    ),
                    CourseModule(
                      index: 2,
                      title: 'Syntax and Variables',
                      watchtime:' 12 min 57 sec',
                      percentage: 50,
                    ),
                    CourseModule(
                      index: 3,
                      title: 'Functions and Arrays',
                      watchtime:'17 min 17 sec',
                      percentage: 65,
                    ),
                  ]),
              SizedBox(height: height*.02,),
              Container(
                height: height*.04,
                width: width*.4,
                decoration: BoxDecoration(
                  color: Color(0xff5D73C3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*.05,)

            ],
          ),
        ),
      ),
    );
  }
}
