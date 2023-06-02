
import 'package:flutter/material.dart';

class PaySponsorButton extends StatelessWidget {
  const PaySponsorButton({Key? key,required this.isPay}) : super(key: key);
  final bool isPay;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.055,
      width: width*.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff5D73C3),
        boxShadow: [
        BoxShadow(
        color: Colors.black38,
        blurRadius: 20.0, // soften the shadow
        spreadRadius: 2.0, //extend the shadow
        offset: Offset(
          2.0, // Move to right 5  horizontally
          10.0, // Move to bottom 5 Vertically
        ),
      )
      ],
      ),
      child: Center(
        child: Text(
            isPay?"Pay":"Sponsor",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

    );
  }
}
