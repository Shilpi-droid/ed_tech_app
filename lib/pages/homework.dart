import 'package:flutter/material.dart';
import 'package:skido/pages/5to10.dart';
import 'package:skido/pages/aboutus.dart';
import 'package:skido/pages/googleint.dart';
import 'package:skido/pages/interview.dart';
import 'package:skido/pages/interviewrole.dart';
import 'package:skido/pages/test.dart';
import 'package:skido/widgets/categories.dart';

class Homework extends StatefulWidget {
  const Homework({Key? key}) : super(key: key);

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Column(
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,),
                onPressed: (){Navigator.pop(context);},
            ),
            GestureDetector(
                child: Categories(text: '5-10 page'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Fiveto10()),
                  );
                },
            ),
            GestureDetector(
                child: Categories(text: 'About us'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  AboutUs()),
                  );
                },
            ),
            GestureDetector(
                child: Categories(text: 'Int Ques'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  InterviewRole()),
                  );
                },
            ),
            GestureDetector(
                child: Categories(text: 'G Int ques'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  GoogleInt()),
                  );
                },
            ),
            GestureDetector(
              child: Categories(text: 'Interview'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Interview()),
                );
              },
            ),
            GestureDetector(
              child: Categories(text: 'Test'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  TestPage()),
                );
              },
            ),
          ],
        )
      ),
    );
  }
}
