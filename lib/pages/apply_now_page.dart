
import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/Course.dart';
import '../widgets/apply_now_header.dart';
import '../widgets/course_tile.dart';
import 'detail_page.dart';

class ApplyNowPage extends StatefulWidget {
  const ApplyNowPage({Key? key}) : super(key: key);

  @override
  State<ApplyNowPage> createState() => _ApplyNowPageState();
}

class _ApplyNowPageState extends State<ApplyNowPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,

      body:SingleChildScrollView(
        child: Stack(
          children:[
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
              top: height*.03,
                child:
            Row(children: [
              IconButton(
                  onPressed: (){Navigator.pop(context);},
                  icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)
              ),
              SizedBox(width: width*.4,),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search,color: Colors.white,)
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite,color: Colors.white,)
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart,color: Colors.white,)
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person,color: Colors.white,)
              ),
            ],)),

            Positioned(
              top: height*.1,
              left: width*.05,
              child: ApplyNowHeader(),
            ),
            Positioned(
              left: width*.65,
                bottom: height*.57,
                child: SizedBox(
                    height: height*.45,
                    width: width*.3,
                    child: Image(image: AssetImage("assets/header/headerimg.png")))),
            Positioned(
                left: width*.16,
                bottom: height*.63,
                child: Column(
                  children: [
                    Text("Purchase Our Signature",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
                    Text("Coding Classes",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
                  ],
                )
            ),
            Positioned(
              top: height*.37,
              left: width*.025,
              child:  Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: height * .6,
                width: width * .95,
                child: ListView.builder(
                    itemCount: Course.courseList.length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(children:[
                        GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                              );
                            },
                            child: CourseTile(index: index,)
                      ),
                        Positioned(
                            bottom: 0,
                            right: 20,
                            child:  GestureDetector(
                              onTap: (){
                                setState(() {
                                  Course.courseList[index].isFavorated=!Course.courseList[index].isFavorated;
                                });
                              },
                              child: Icon(
                                Course.courseList[index].isFavorated?
                                Icons.favorite:
                                Icons.favorite_border,
                                color: Course.courseList[index].isFavorated?
                                Color(0xff5D73C3):Colors.white,
                              ),
                            )
                        ),
                      ]);
                    }),
              )
            ),


        ]
        ),
      ),

    );
  }
}
