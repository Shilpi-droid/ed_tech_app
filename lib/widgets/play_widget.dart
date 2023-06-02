
import 'package:flutter/material.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.052,
      width: width*.14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff5D73C3),
              Color(0xff5D73C3).withOpacity(.8),
              Color(0xff5D73C3).withOpacity(.4),
            ]
        )
      ),
      child: Center(
        child: Icon(Icons.play_arrow,color: Colors.white,size: 35,),
      ),
    );
  }
}
