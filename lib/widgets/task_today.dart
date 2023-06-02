
import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/Task.dart';

class TaskToday extends StatelessWidget {
  const TaskToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          width: width*.9,
          height: height*.4,
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
          ]),),),

              BackdropFilter(
              filter: ImageFilter.blur(
              sigmaY: 3,
              sigmaX: 3,
              ),),          
              Positioned(
                  left: width*.05,
                  top: height*.02,
                  child: Text(
                    Task.tasks[0].title,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),
                  )),
                Positioned(
                    left: width*.05,
                    top: height*.08,
                    child: Text(
                     "Today",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,

                      ),
                    )),
                Positioned(
                    left: width*.05,
                    top: height*.105,
                    child: Text(
                      Task.tasks[0].time,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,

                      ),
                    )),
                Positioned(
                    left: width*.05,
                    top: height*.14,
                    child: Text(
                      "Mode",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,

                      ),
                    )),
                Positioned(
                    left: width*.05,
                    top: height*.165,
                    child: Text(
                      Task.tasks[0].mode,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,

                      ),
                    )),

              ],),)

    );

  }
}
