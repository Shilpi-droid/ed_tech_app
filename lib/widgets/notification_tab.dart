
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/models/Notification.dart';
import 'notification_vector.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({Key? key,required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return
      index!=0?
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            width: width*.9,
            height: height*.16,
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
                      ),),),
                BackdropFilter(
                filter: ImageFilter.blur(
                sigmaY: 3,
                sigmaX: 3,
                ),
                ),
                  Positioned(
                    left: width*.64,
                      top: height*.03,
                      child: NotificationVector(),
                  ),
                  Positioned(
                    left: width*.04,
                    top: height*.02,
                    child:Column(
                      children: [
                        Container(
                            height: 40,
                            width: width*.6,
                            child: Flexible(
                                child: Text(
                                    Notif.notificationsList[index].title1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),
                                ))),
                        Container(
                            height: 30,
                            width: width*.6,
                            child: Flexible(
                                child: Text(
                                  Notif.notificationsList[index].title2,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ))),
                        Container(
                            height: 25,
                            width: width*.6,
                            child: Flexible(
                                child: Text(
                                  Notif.notificationsList[index].title3,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ))),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 6,
                      left: 10,
                      child: Text( Notif.notificationsList[index].time,
                    style: TextStyle(fontSize: 10,color: Colors.white),

                  ))

              ],
              ),
              )

              ),
    ):
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          width: width*.9,
          height: height*.16,
          color: Colors.transparent,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  //border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff5F6097)
                  ),),
              Positioned(
                left: width*.64,
                top: height*.03,
                child: NotificationVector(),
              ),
              Positioned(
                left: width*.04,
                top: height*.02,
                child:Column(
                  children: [
                    Container(
                        height: 40,
                        width: width*.6,
                        child: Flexible(
                            child: Text(
                              Notif.notificationsList[index].title1,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ))),
                    Container(
                        height: 30,
                        width: width*.6,
                        child: Flexible(
                            child: Text(
                              Notif.notificationsList[index].title2,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ))),
                    Container(
                        height: 25,
                        width: width*.6,
                        child: Flexible(
                            child: Text(
                              Notif.notificationsList[index].title3,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ))),
                  ],
                ),
              ),
              Positioned(
                  bottom: 6,
                  left: 10,
                  child: Text( Notif.notificationsList[index].time,
                    style: TextStyle(fontSize: 10,color: Colors.white),

                  ))

            ],
          ),
        ),
      );



  }
}
