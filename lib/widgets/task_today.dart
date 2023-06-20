
import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/Task.dart';

class TaskToday extends StatelessWidget {
  const TaskToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width*.7,
      height: height*.45,
      child: Stack(
        children:[

          ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [

          Container(
            width: width*.7,
            height: height*.4,
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
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10.0,left: 10,right: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Task.tasks[0].title,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(height: height*.05,),
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,

                  ),
                ),

                Text(
                  Task.tasks[0].time,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,

                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Mode",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,

                  ),
                ),
                Text(
                  Task.tasks[0].mode,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,

                  ),
                )

              ],
            ),
          ),
          ),
              ],)

        ),
          Positioned(
              right: 0,
              child: Container(
                width: width*.5,
                height: height*.22,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("assets/Task/task_vector.png",),
                        fit: BoxFit.fitWidth
                    )
                ),
              )
          ),


        ]
      ),
    );

  }
}
