import 'package:flutter/material.dart';
import 'package:skido/pages/taketest.dart';
import 'package:skido/widgets/categories.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        // padding: EdgeInsets.all(-1),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_rounded, size: 25, color: Colors.white,),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  TakeTest()),
                      );
                    },
                    child: Categories(text: 'Take Test'),
                  )
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
