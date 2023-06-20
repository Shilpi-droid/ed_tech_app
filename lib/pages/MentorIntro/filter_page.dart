
import 'package:flutter/material.dart';

import '../../widgets/Mentor/mentor_pageUI.dart';



class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

List<bool>isSelected=[false,false,false,false,false,false,false,false,false,false];
bool isVisible=false;

class _FilterPageState extends State<FilterPage> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        MentorPageUI(),
        Opacity(
          opacity: 0.75,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),
        Positioned(
          top: height*.08,
            right: width*.05,
            child: FilterButton()
        ),
        Positioned(
            top: height*.12,
            right: width*.05,
            child: GestureDetector(
              onTap: ()
                {
                  setState(() {
                    isSelected[0]=!isSelected[0];
                  });
                },
                child: filteroption(text:"Digital Mkt." ,isSelected: isSelected[0],)
            )
        ),
        Positioned(
            top: height*.16,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[1]=!isSelected[1];
                  });
                },
                child: filteroption(text:"Product Mgt." ,isSelected: isSelected[1],)
            )
        ),
        Positioned(
            top: height*.2,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[2]=!isSelected[2];
                  });
                },
                child: filteroption(text:"Data Science" ,isSelected: isSelected[2],)
            )
        ),
        Positioned(
            top: height*.2,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[3]=!isSelected[3];
                  });
                },
                child: filteroption(text:"Data Science" ,isSelected: isSelected[3],)
            )
        ),
        Positioned(
            top: height*.24,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[4]=!isSelected[4];
                  });
                },
                child: filteroption(text:"Operations" ,isSelected: isSelected[4],)
            )
        ),
        Positioned(
            top: height*.28,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[5]=!isSelected[5];
                  });
                },
                child: filteroption(text:"Finance" ,isSelected: isSelected[5],)
            )
        ),
        Positioned(
            top: height*.32,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[6]=!isSelected[6];
                  });
                },
                child: filteroption(text:"HR Analytics" ,isSelected: isSelected[6],)
            )
        ),
        Positioned(
            top: height*.36,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[7]=!isSelected[7];
                  });
                },
                child: filteroption(text:"Finance" ,isSelected: isSelected[7],)
            )
        ),
        Visibility(
          visible: !isVisible,
          child: Positioned(
              top: height*.39,
              right: width*.09,
              child: TextButton(onPressed: (){
                setState(() {
                isVisible=!isVisible;
                  });
                },
                  child: Text("View More"))),
        ),
        Visibility(
          visible: isVisible,
          child: Positioned(
            top: height*.4,
            right: width*.05,
            child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isSelected[8]=!isSelected[8];
                  });
                },
                child: filteroption(text:"ML" ,isSelected: isSelected[8],)
            )
        ),),
        Visibility(
          visible: isVisible,
          child: Positioned(
              top: height*.44,
              right: width*.05,
              child: GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      isSelected[9]=!isSelected[9];
                    });
                  },
                  child: filteroption(text:"AI" ,isSelected: isSelected[9],)
              )
          ),),
          Visibility(
          visible: isVisible,
            child: Positioned(
            top: height*.46,
            right: width*.09,
                child: TextButton(onPressed: (){
                setState(() {
                isVisible=!isVisible;
                });
                },
                child: Text("Show Less"))
    ),)

      ],
    );
  }
}


class filteroption extends StatelessWidget {
  const filteroption({Key? key,required this.text,required this.isSelected}) : super(key: key);

  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.04,
      width: width*.3,
      decoration:
      isSelected?
      BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.18)),
        borderRadius: BorderRadius.circular(15),
        color:Color(0xff5D73C3).withOpacity(.5),
      ):
      BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.18)),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white70.withOpacity(.35),
              Colors.transparent
            ]
        ),
      )
      ,
      child:Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              decoration: TextDecoration.none,
              fontFamily: 'Montserrat'
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height*.04,
      width: width*.3,
      decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.18)),
        borderRadius: BorderRadius.circular(15),
        color:Color(0xff5D73C3),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.filter_alt_rounded,color: Colors.white,),
          Text(
            "Filter",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                decoration: TextDecoration.none,
                fontFamily: 'Montserrat'
            ),
          )
        ],
      ),
    );
  }
}
