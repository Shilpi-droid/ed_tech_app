
import 'dart:ui';

import 'package:flutter/material.dart';

class CreateNewTaskWidget extends StatelessWidget {
  const CreateNewTaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.27,
      width: width,
      child:  Stack(
        children: [
            Positioned(
                child: Container(
                  width: width*.5,
                  height: height*.23,
                  child: Center(
                    child: Text(
                      "Create New Task",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27
                      ),
                    ),
                  ),
                )
            ),
          Positioned(
            right: 37,
              top: 10,
              child: Container(
                width: width*.48,
                height: height*.25,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Image.asset("assets/Task/new_task_bg.png"),
                    Positioned(
                      left: width*.04,
                        top: -6.5,

                        child: Image.asset("assets/Task/new_task.png",scale: 1.7,)
                    )
                  ],
                )
              )
          ),
        ],
      )
    );
  }
}
