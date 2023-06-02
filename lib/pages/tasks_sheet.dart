
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skido/pages/create_new_task.dart';

import '../widgets/finished_work_tab.dart';
import '../widgets/next_widget.dart';
import '../widgets/note_vector.dart';
import '../widgets/task_today.dart';
import '../widgets/DateUtils.dart' as date_util;


class TaskSheet extends StatefulWidget {
  const TaskSheet({Key? key}) : super(key: key);

  @override
  State<TaskSheet> createState() => _TaskSheetState();
}

class _TaskSheetState extends State<TaskSheet> {
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }



  Widget capsuleView(int index) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentDateTime = currentMonthList[index];
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Stack(
              children:[
                //GlassCircle(),
                Container(
                width: 40,
                height: 140,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:(currentMonthList[index].day != currentDateTime.day)? [
                      Colors.white.withOpacity(.4),
                      Colors.white.withOpacity(0.02),
                    ]: [Color(0xff5F6097)
                      ,Color(0xff5F6097)]
                ),
              ),
            ),
                // GlassCircle(),

                BackdropFilter(
                  filter: ImageFilter.blur(
                sigmaY: 3,
                sigmaX: 3,
              ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(width: 6.5,),
                        Text(
                          date_util.DateUtils
                              .weekdays[currentMonthList[index].weekday - 1],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color : Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 6,),
                        Text(
                          currentMonthList[index].day.toString(),
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),

                  ],
                ),

              ),
            ]
            ),
          ),
        ));
  }




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
          children: [
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
            Positioned(
                top: height*.02,
                child: IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.arrow_back_ios_outlined,color: Colors.white,))),
            Positioned(
              top: height*.08,
              left: width*.045,
              child: Row(
                children: [
                  Text('Task Sheet',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                  SizedBox(width: width*.1,),
                  Container(
                    height:height*.048 ,
                    width: width*.42,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(.2)),
                        color: Color(0xff5F6097),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "Hello Dianne,",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ],
              ),),
            Positioned(
                top:height*.16,
                child: Container(
                  width: width,
                  height: 70,
                  child: ListView.builder(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: currentMonthList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return capsuleView(index);
                    },
                  ),
                )
            ),
            Positioned(
                top:height*.28,
                left: width*.05,
                child: Container(
                  width: width*.7,
                  height: height*.21,
                  child:TaskToday(),
                )
            ),
            Positioned(
                top: height*.25,
                right:width*.015,
                child: Image.asset("assets/Task/task_vector.png",scale: .8,)
            ),
            Positioned(
                top: height*.53,
                left:width*.05,
                child: FinishedWork(title: "Illustration Design Concept")
            ),
            Positioned(
                top: height*.62,
                left:width*.05,
                child:Align(
                  alignment: Alignment.topLeft,
                  child: Text("Notes",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),),
                ),
            ),
            Positioned(
                top: height*.66,
                left:width*.05,
                child: Column(
                  children: [
                    Note(text: "Final Project meeting",),
                    Note(text: "Work Review",),
                    Note(text: "Discussion",),
                  ],
                )
            ),
            Positioned(
                top: height*.92,
                left:width*.02,
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  CreateNewTask()),
                      );
                    },
                    child: NextWidget(text: "Next Sheet",))
            )

          ],
      ),
    );
  }
}
































class GlassCircle extends StatelessWidget {
  const GlassCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          width: 30,
          height: 30,
          color: Colors.transparent,
          child: Stack(
              children: [

          Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                border:Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(.3),
                  Colors.white.withOpacity(0.02),
                ]
            ),

          ),
          ),
            BackdropFilter(
                filter: ImageFilter.blur(
                sigmaY: 3,
                sigmaX: 3,
                ),
            )
            ],
            ),
            )

    );

  }
}
