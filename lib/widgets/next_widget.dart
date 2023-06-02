
import 'package:flutter/material.dart';

class NextWidget extends StatelessWidget {
  const NextWidget({Key? key,required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: width*.08,),
        Container(
            height:height*.048 ,
            width: width*.53,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(.2)),
            color: Color(0xff5F6097),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(
             text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        SizedBox(width: width*.2,),
        Container(
          height:35 ,
          width: 35,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(.2)),
            shape: BoxShape.circle,
              color: Color(0xff5F6097)
          ),
          child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
        ),

      ],
    );
  }
}
