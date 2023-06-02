
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/tasks_sheet.dart';


import '../models/Notification.dart';
import '../widgets/notification_tab.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool isSelectedTasks=true;
  bool isSelectedNotifications=false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
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
              ),
            ),
            Positioned(
                top: height*.02,
                child: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.white,))),
            Positioned(
              top: height*.06,
              left: width*.15,
              child: Container(
                height: height*.04,
                width: width*.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent
                ),
                child:
                !isSelectedTasks?
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelectedNotifications=false;
                      isSelectedTasks=true;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  TaskSheet()),
                      );
                    }
                    );

                  },
                  child: Row(
                    children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                  child: Container(
                      width: width*.35,
                      height: height*.04,
                      color: Colors.transparent,
                      child: Stack(
                          children: [
                      Container(
                      decoration: BoxDecoration(
                      border:Border.all(color: Colors.white.withOpacity(0.18)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
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
                      ),
                            Positioned(
                              top: height*.008,
                              left: width*.11,
                              child: Text('Tasks',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 15,

                                ),),
                            )
                      ]
                      ),
                    )

                  ),

                      Stack(
                        children:[ Container(
                          height: height*.04,
                          width: width*.35,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                              color: Color(0xff5F6097)
                          ),
                        ),

                      Positioned(
                        top: height*.008,
                        right: width*.06,
                        child: Text('Notifications',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,

                          ),),
                      )
                        ])
                    ],
                  ),
                ):GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelectedNotifications=true;
                      isSelectedTasks=false;
                    });
                  },
                  child: Row(
                    children: [
                      Stack(
                          children:[ Container(
                            height: height*.04,
                            width: width*.35,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                ),
                                color: Color(0xff5F6097)
                            ),
                          ),

                            Positioned(
                              top: height*.008,
                              left: width*.11,
                              child: Text('Tasks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,

                                ),),
                            )
                          ]),
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          child: Container(
                            width: width*.35,
                            height: height*.04,
                            color: Colors.transparent,
                            child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border:Border.all(color: Colors.white.withOpacity(0.18)),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(50),
                                        bottomRight: Radius.circular(50),
                                      ),
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
                                  ),
                                  Positioned(
                                    top: height*.008,
                                    right: width*.06,
                                    child: Text('Notifications',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,

                                      ),),
                                  )
                                ]
                            ),
                          )

                      ),
                    ],
                  ),
                )

              ),
            ),

         Positioned(
           left: width*.05,
           top: height*.13,
           child: Container(
             height: height*87,
             width: width*.9,
             child: ListView.builder(
               itemCount: Notif.notificationsList.length,
                 scrollDirection: Axis.vertical,
                 physics: const BouncingScrollPhysics(),
                 itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){

                      },
                      child: NotificationTab(index:index),
                    );
                 }),
           ),
         )

        ]
        ),
      ),
    );
  }
}
