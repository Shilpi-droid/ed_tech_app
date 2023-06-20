import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/widgets/interviewwidgets.dart';

import '../widgets/categories.dart';
import '../widgets/division.dart';

class Interview extends StatelessWidget {
  const Interview({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/elements/backg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white)
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropButton(text: 'Companies'),
                      SizedBox(width: 5),
                      DropButton(text: 'Department'),
                      SizedBox(width: 5),
                      DropButton(text: 'Role'),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Section(text: 'Learn'),
                      SizedBox(width:5),
                      Section(text: 'Prepare'),
                      SizedBox(width:5),
                      Section(text: 'Practice'),
                      SizedBox(width:5),
                      Section(text: 'Succeed'),
                    ],
                  ),
                  SizedBox(height: 28),
                  Text("About courses & questions we\nhave for you",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 30,
                        width: 185,
                        decoration: BoxDecoration(
                          //color: Colors.white.withOpacity(0.3),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.4),
                              Colors.white.withOpacity(0.1),
                            ],
                            begin:Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.2,0.8],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color:Colors.white, width: 0.4),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Search",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.search, color: Colors.white, size:14),
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: width-30-20,
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: width-30,
                          child: Column(
                            children: [
                              SizedBox(height: 28),
                              Row(
                                children: [
                                  SizedBox(width: 101),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        height: 95,
                                        width: 241,
                                        decoration: BoxDecoration(
                                          //color: Colors.white.withOpacity(0.3),
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.white.withOpacity(0.4),
                                              Colors.white.withOpacity(0.1),
                                            ],
                                            begin:Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.2,0.8],
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                          border: Border.all(color:Colors.white, width: 0.4),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Text("Product Management",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Container(
                                                  width: 231,
                                                  child: Text("A product manager's job description involves planning and executing the product's lifecycle. It also includes curating and prioritizing the requirements of products and customers. Product managers work closely with the sales, marketing, and engineering teams for various aspects. Product management examples also include the branding and customer communication required to launch a new product. Each product, in its nascent form, requires proper branding. This creates awareness about the product in the market. Advertising and PR handling also fall under the umbrella of product management.",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.montserrat(
                                                      fontSize: 5,
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Container(
                            width: 101,
                            height: 128,
                            child: Image(
                              image: AssetImage('assets/Interview/inter1.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Categories(text: 'Show More'),
                  SizedBox(height:17),
                  Container(
                    height: 128,
                    width: width-30,
                    child: Stack(
                      children: [
                        Container(
                          height: 128,
                          width: width-30,
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        height: 102,
                                        width: 221,
                                        decoration: BoxDecoration(
                                          //color: Colors.white.withOpacity(0.3),
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.white.withOpacity(0.4),
                                              Colors.white.withOpacity(0.1),
                                            ],
                                            begin:Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.2,0.8],
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                          border: Border.all(color:Colors.white, width: 0.4),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Column(
                                              children: [

                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 110),
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Container(
                            width: 118,
                            height: 127,
                            child: Image(
                              image: AssetImage('assets/Interview/inter2.png'),
                              fit: BoxFit.cover ,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Categories(text: 'More Q&A'),
                  SizedBox(height:34),
                  Text("Interview questions of some\nfamous companies",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.square(dimension: 75,child: Image(image: AssetImage('assets/Interview/logoGoogle.png'),)),
                      SizedBox(width: 11),
                      SizedBox.square(dimension: 75,child: Image(image: AssetImage('assets/Interview/logoNetflix.png'),)),
                      SizedBox(width: 11),
                      SizedBox.square(dimension: 75,child: Image(image: AssetImage('assets/Interview/logoMicrosoft.png'),)),
                      SizedBox(width: 11),
                      SizedBox.square(dimension: 75,child: Image(image: AssetImage('assets/Interview/logoMeta.png'),)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Categories(text: 'Show More'),
                  SizedBox(height: 34),
                  Text("Interview questions for some\nroles",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RolesCat(text: 'Project Manager'),
                      SizedBox(width: 5),
                      RolesCat(text: 'Data Scientist'),
                      SizedBox(width: 5),
                      RolesCat(text: 'Product Manager'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RolesCat(text: 'Manager & Planning'),
                      SizedBox(width: 5),
                      RolesCat(text: 'Full Stack Developer'),
                      SizedBox(width: 5),
                      RolesCat(text: 'Digital Marketing'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Categories(text: 'More Roles'),
                  SizedBox(height: 34),
                  Text("Test yourself by some\nAssessment Questions",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ASQTopics(text: 'Technical'),
                      SizedBox(width: 46),
                      ASQTopics(text: 'Personality Based'),
                      SizedBox(width: 46),
                      ASQTopics(text: 'Problem Solving'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ASQSubTopics(text: 'Technical Round(Q & A)'),
                      SizedBox(width: 10),
                      ASQSubTopics(text: 'Personality Based Round\n(Q & A)'),
                      SizedBox(width: 10),
                      ASQSubTopics(text: 'Problem Solving Round\n(Q & A)'),
                    ],
                  ),
                  SizedBox(height: 34),
                  Text("Choose your mentor & time\naccording to your choice ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            height: 26,
                            width: 104,
                            decoration: BoxDecoration(
                              //color: Colors.white.withOpacity(0.3),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.4),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin:Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.2,0.8],
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color:Colors.white, width: 0.4),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("DD/MM/YY",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            height: 26,
                            width: 104,
                            decoration: BoxDecoration(
                              //color: Colors.white.withOpacity(0.3),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.4),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin:Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.2,0.8],
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color:Colors.white, width: 0.4),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("00:00:00",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox.square(dimension: 18, child: Image(image: AssetImage('assets/Interview/clock.png'),),)
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            height: 26,
                            width: 104,
                            decoration: BoxDecoration(
                              //color: Colors.white.withOpacity(0.3),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.4),
                                  Colors.white.withOpacity(0.1),
                                ],
                                begin:Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.2,0.8],
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color:Colors.white, width: 0.4),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Mentor",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox.square(dimension: 18, child: Image(image: AssetImage('assets/Interview/avatar.png'),),)
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 280,
                        width: 147,
                        child: Column(
                          children: [
                            Text("Testimonials",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text("See what our student’s says\nabout us.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Testimonials(imageUrl: 'assets/8to12/testi1.png', div: 'Neha Grover', descp: 'A big shout to my mentor Pavan. He created an environment between us such a way that if i found difficulty in any concepts or any understandings i used to discuss with him & right away we used to have sessions.'),
                            SizedBox(height:2),
                            Icon(Icons.arrow_drop_down, color: Colors.white.withOpacity(0.4),size: 40,),
                          ],
                        ),
                      ),
                      SizedBox(width:20),
                      Container(
                        height: 280,
                        width: 147,
                        child: Column(
                          children: [
                            Text("Our Courses",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text("Explore our popular courses.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Categories(text: 'More Courses'),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 103,
                        width: width-30,
                        decoration: BoxDecoration(
                          //color: Colors.white.withOpacity(0.3),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.3),
                              Colors.white.withOpacity(0.1),
                            ],
                            begin:Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.2,0.8],
                          ),
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color:Colors.white, width: 0.2),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 82,
                                  width: 172,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image(image: AssetImage('assets/Interview/mc1.png'),),
                                      Positioned(
                                        left: 8,
                                        top: 4,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                            child: Container(
                                              height: 18,
                                              width: 89,
                                              decoration: BoxDecoration(
                                                //color: Colors.white.withOpacity(0.3),
                                                // gradient: LinearGradient(
                                                //   colors: [
                                                //     Colors.white.withOpacity(0.1),
                                                //     Colors.white.withOpacity(0.05),
                                                //   ],
                                                //   begin:Alignment.topCenter,
                                                //   end: Alignment.bottomCenter,
                                                //   stops: [0.2,0.8],
                                                // ),
                                                borderRadius: BorderRadius.circular(20.0),
                                                border: Border.all(color:Colors.white, width: 0.4),
                                              ),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text("Explore Courses",
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.montserrat(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 12,
                                        bottom: 4,
                                        child: Text("Build your bright future with MS in Data Science",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 7,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 82,
                                  width: 172,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image(image: AssetImage('assets/Interview/mc2.png'),),
                                      Positioned(
                                        right: 8,
                                        top: 4,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                            child: Container(
                                              height: 18,
                                              width: 89,
                                              decoration: BoxDecoration(
                                                //color: Colors.white.withOpacity(0.3),
                                                // gradient: LinearGradient(
                                                //   colors: [
                                                //     Colors.white.withOpacity(0.1),
                                                //     Colors.white.withOpacity(0.05),
                                                //   ],
                                                //   begin:Alignment.topCenter,
                                                //   end: Alignment.bottomCenter,
                                                //   stops: [0.2,0.8],
                                                // ),
                                                borderRadius: BorderRadius.circular(20.0),
                                                border: Border.all(color:Colors.white, width: 0.4),
                                              ),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text("Explore Courses",
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.montserrat(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 12,
                                        bottom: 4,
                                        child: Text("A job - linked Full Stack Development Bootcamp",
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 7,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Explore Free Courses",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FreeCourses(img: 'assets/Interview/fc1.png', heading: 'Marketing', desc: 'Advance your career in the field of marketing with Industry relevant free courses.'),
                      SizedBox(width: 10),
                      FreeCourses(img: 'assets/Interview/fc2.png', heading: 'Data Science & Machine Learning', desc: 'Build your foundation in one of the hottest industry of the 21st century. '),
                    ],
                  ),
                  SizedBox(height:10),
                  Categories(text: 'Free Courses')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
