import 'package:flutter/material.dart';

class MentorOnboarding extends StatefulWidget {
  const MentorOnboarding({Key? key}) : super(key: key);

  @override
  State<MentorOnboarding> createState() => _MentorOnboardingState();
}

class _MentorOnboardingState extends State<MentorOnboarding> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
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
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
                    )
                  ],
                ),
                Container(
                  height: height,
                  width: width,
                  child: OnboardingBg(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextFieldMentor extends StatelessWidget {
  const CustomTextFieldMentor({Key? key,required this.text,required this.height}) : super(key: key);

  final String text;
  final double height;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.01),
      child: Container(
        width: width*.8,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
               // offset: Offset(1,0),
                blurRadius: 5.0,
                spreadRadius: -10.0,
              ),
            ]
        ),
        child: TextField(
          cursorColor: Color(0xff5F6097),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: width*.02,vertical: height*.15),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
            ),
            hintText: text,

            hintStyle: TextStyle(
                color: Color(0xff5F6097),
                fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            hintMaxLines: 3,

          ),
          maxLines:2,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Color(0xff5F6097),
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}



class OnboardingBg extends StatelessWidget {
  const OnboardingBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
        children:[
          Positioned(
            bottom: 0,
            top: height*.09,
            child: Container(
              height: height*.4,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65),
                  topRight: Radius.circular(65),
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0,1),
                    blurRadius: 15.0,
                    spreadRadius: 10.0,
                  ),
                ],
              ),


            ),
          ),
          Positioned(
            top: height*.15,
            left: width*.1,
            child: Container(
              height: height*.9,
              // color: Colors.yellow,
              child: SingleChildScrollView(
                child: Column(
                children: [
                  SizedBox(height: height*.01,),
                  CustomTextFieldMentor(text:"Full Name",height: height*.06,),
                  CustomTextFieldMentor(text:"Contact no.",height: height*.06,),
                  CustomTextFieldMentor(text:"Email Id:",height: height*.06,),
                  CustomTextFieldMentor(text:"Linkedin Url",height: height*.06,),
                  CustomTextFieldMentor(text:"Organization name:",height: height*.06,),
                  CustomTextFieldMentor(text:"Worked at:",height: height*.06,),
                  CustomTextFieldMentor(text:"How many years of experience do you have?",height: height*.2,),
                  CustomTextFieldMentor(text:"Do you have any prior teaching od mentoring experience?",height: height*.2,),
                  CustomTextFieldMentor(text:"What kind of engagement would you be interested in?",height: height*.2,),
                  CustomTextFieldMentor(text:"What topic do you want to teach?",height: height*.2,),
                  CustomTextFieldMentor(text:"Would you like to be a part of a You Tube webinar to share your knowledge with a large users base of ours?",height: height*.2,),
                  CustomTextFieldMentor(text:"What is your biggest motivation for teaching at TalentServe?",height: height*.2,),
                  CustomTextFieldMentor(text:"How many followers do you have on your social media cumulatively?",height: height*.2,),
                  SizedBox(height: height*.2,),
                ],
          ),
              ),
            ),),
          Positioned(
              top: height*.02,
              left: width*.35,
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  width: width*.3,
                  height: width*.3,
                  decoration: BoxDecoration(
                    color: Color(0xff5D73C3),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white70,
                        offset: Offset(0,1),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Icon(Icons.camera_alt,color: Colors.white,size: width*.2,),
                ),
              )
          ),

        ]
    );
  }
}
