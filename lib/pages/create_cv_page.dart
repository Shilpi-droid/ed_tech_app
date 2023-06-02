
import 'package:flutter/material.dart';

import '../widgets/back_button.dart';
import '../widgets/create_cv_textfield.dart';
import '../widgets/next_button.dart';


class CreateCVPage extends StatefulWidget {
  const CreateCVPage({Key? key}) : super(key: key);

  @override
  State<CreateCVPage> createState() => _CreateCVPageState();
}

class _CreateCVPageState extends State<CreateCVPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/elements/backg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){Navigator.pop(context);},
                      icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)
                  )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: width*.05,),
                    Container(
                      height: height*.2,
                      width: width*.5,
                      child: Column(
                        children: [
                          Text(
                              "The CV that gets the job (done)",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 23,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            "Standing out. Professional. Recruiter-approved. Ready in minutes with our step-by-step builder.",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                width: 120,
                                height: 28,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff5D73C3),
                                    border: Border.all(color: Colors.white70.withOpacity(.2))
                                ),

                                child: Center(
                                  child: Text('Create your CV',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),),
                    Column(
                      children: [
                        Container(
                          height: height*.25,
                          width: width*.4,
                          child: Image.asset("assets/CV/cvheader.png",scale: .9,),
                        ),
                        SizedBox(height: height*.025,)
                      ],
                    ),
              ],
            ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*.05),
                  child: Image.asset("assets/CV/cvsteps.png",scale: 1.4,),
                ),
                SizedBox(height: height*.02,),
                Column(
                  children: [
                    Text(
                    'Let\'s start with your Header',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 23.5,
                      color: Colors.white
                  ),),
                    SizedBox(
                      width: width*.6,
                      child: Text(
                        'Include your full name and at least one way for employees to contact you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*.012,),
                Row(
                  children: [
                    SizedBox(width: width*.05,),
                    Image.asset("assets/CV/scan_template_vector.png",scale: 3.0,),
                    SizedBox(width: width*.02,),
                    Column(
                      children: [
                        Row(
                          children: [
                            CreateCVTextfield(width: width*.3,text: "Name",),
                            CreateCVTextfield(width: width*.3,text: "Surname",),
                          ],
                        ),
                        Row(
                          children: [
                            CreateCVTextfield(width: width*.3,text: "City",),
                            CreateCVTextfield(width: width*.3,text: "Country",),
                          ],
                        ),
                        Row(
                          children: [
                            CreateCVTextfield(width: width*.3,text: "Pincode",),
                            CreateCVTextfield(width: width*.3,text: "Mobile No.",),
                          ],
                        ),
                        Row(
                          children: [
                            CreateCVTextfield(width: width*.62,text: "Email id:",),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: height*.02,),
                Stack(
                    children:[
                      Image.asset("assets/CV/change_template_vector.png",scale: 3.5,),
                      Positioned(
                        top: height*.275,
                        left: width*.227,
                        child: Text(
                          "Change Template",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ]
                ),
                SizedBox(height: height*.02,),
                Row(
                  children: [
                    SizedBox(width: width*.175,),
                    BackContainer(),
                    SizedBox(width: width*.05,),
                    NextButton(),
                  ],
                ),
                SizedBox(height: height*.03,),
            ],
        ),
          ),
    ),
      ),
    );

  }
}
