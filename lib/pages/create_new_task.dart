
import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/calendar_widget.dart';
import '../widgets/create_new_task_widget.dart';
import '../widgets/dashed_line.dart';
import '../widgets/glass_icon.dart';
import '../widgets/next_widget.dart';


class CreateNewTask extends StatefulWidget {
  const CreateNewTask({Key? key}) : super(key: key);

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  List<Widget> widgetList = [];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[
            //background image
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
            //back icon
            Positioned(
                top: height*.02,
                child: IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.white,))),
            // create new task decoration widget
            Positioned(
                top: height*.07,
                left: width*.05,
                child:CreateNewTaskWidget(),),

            //title textfield
            Positioned(
              top: height*.3,
              left: width*.05,
                height: height*.11,
              width: width,
              child:Stack(
                children: [
                  Text(
                    'Title',
                    style:
                    TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                     top: height*.03,
                    child: Container(
                      width: width*.9,
                      height: height*.06,
                      // color: Colors.blue,
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
                                child:Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )

                      ),
                    ),
                  )

                ],
              )
            ),

            //select category drop down
            Positioned(
                top: height*.4,
                left: width*.05,
                height: height*.11,
                width: width,
                child: Stack(
                  children: [
                    Text(
                      'Select Category',
                      style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Positioned(
                      top: height*.03,
                      child: Container(
                        width: width*.9,
                        height: height*.06,
                        // color: Colors.blue,
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
                                  child:Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                        ),
                                      ),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )

                        ),
                      ),
                    )

                  ],
                )
            ),

            //Calendar widget
            Positioned(
                top: height*.5,
                left: width*.05,
                height: height*.1,
                width: width,
                child: CalendarWidget()
            ),

            //Add Description
            Positioned(
                top: height*.6,
                left: width*.05,
                height: height*.13,
                width: width,
                child: Stack(
                  children: [
                    Text(
                      'Add Description',
                      style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Positioned(
                      top: height*.03,
                      child: Container(
                        width: width*.9,
                        height: height*.1,
                        // color: Colors.blue,
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
                                  child:Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                        ),
                                      ),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )

                        ),
                      ),
                    ),

                  ],
                )
            ),

            //Add Participant label and dashed underline
            Positioned(
                top:height*.75,
                left: width*.05,
                height: height*.07,
                width: width*.9,
                child: Stack(
                  children: [
                    Text(
                      'Add Participant',
                      style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Positioned(
                      top: height*.03,
                      child:Container(
                          width: width*.9,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: DashedLine(),
                          ))
                    ),

                  ],
                )
            ),

            //Add participant widget
            Positioned(
                top:height*.82,
                left: width*.05,
                height: height*.13,
                width: width*.9,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: height*.03,
                          child:GestureDetector(
                            onTap:(){
                              setState(() {
                                widgetList.removeLast();
                              });
                            },
                            child: GlassIcon(icon: Icons.remove, size: 30, iconColor: Colors.white, iconSize: 20)),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: height*.05,
                          width: width*.65,
                          child: Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widgetList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return widgetList[index];
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: height*.03,
                          child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  widgetList.add(
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 10.0),
                                        child: GlassIcon(
                                            icon: Icons.person,
                                            size: 40,
                                            iconColor: Colors.white,
                                            iconSize: 35),
                                      )
                                  ); // Add a new inst
                                },);
                              },
                              child: GlassIcon(icon: Icons.add, size: 30, iconColor: Colors.white, iconSize: 20)),
                        )
                      ],
                    ),

                  ],
                )
            ),

            //Create new task widget
            Positioned(
                top: height*.9,
                child: NextWidget(text: "Create New Task",)
            )


          ]
        ),
      ),
    );
  }
}

