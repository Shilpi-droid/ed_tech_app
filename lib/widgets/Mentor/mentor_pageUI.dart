
import 'package:flutter/material.dart';
import 'package:skido/widgets/Mentor/search_button.dart';


import 'mentor_page_header.dart';
import 'mentor_page_steps.dart';

class MentorPageUI extends StatelessWidget {
  const MentorPageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                Row(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      SearchButton(),
                      Container(
                          height: height*.04,
                          width: width*.3,
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.white.withOpacity(0.18)),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff5D73C3).withOpacity(.9),
                                  Color(0xff5D73C3).withOpacity(0.2),
                                ]
                            ),
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.filter_alt_rounded,color: Colors.white,),
                              Text("Filter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            ],
                          )
                      )
                    ]
                ),
                SizedBox(height: height*.02,),
                Container(
                  height: height*.25,
                  width: width*.93,
                  child: Stack(
                      children:[
                        Positioned(
                            left: 0,
                            right: 0,
                            child: MentorPageHeader()),
                        Positioned(
                            top: height*.185,
                            left: width*.05,
                            child: Container(
                              width: width*.25,
                              height: height*.035,
                              decoration: BoxDecoration(
                                  color: Color(0xff5D73C3),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.white70.withOpacity(.5))
                              ),
                              child: Center(child: Text('Apply Now',style: TextStyle(color: Colors.white),)),
                            )
                        )
                      ]),
                ),
                SizedBox(height: height*.025,),
                MentorPageSteps(),
                SizedBox(height: height*.025,),
                SizedBox(
                  height: height*.13,
                  width: width*.8,
                  child: Text(
                    "SKIDO is an online automation that"
                        " improves your ability, skills & knowledge",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/MentorPage/ManishaBapna.png",scale:3.3),
                    Image.asset("assets/MentorPage/BillyVarghese.png",scale:3.3)
                  ],),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
