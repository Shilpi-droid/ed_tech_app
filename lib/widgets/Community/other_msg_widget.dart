
import 'package:flutter/material.dart';

class OtherMsgWidget extends StatelessWidget {
  const OtherMsgWidget({Key? key,required this.sender,required this.msg}) : super(key: key);

  final String sender;
  final String msg;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
          child:ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: width-60
            ),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              color: Colors.white.withOpacity(.5),
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(sender,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                    const SizedBox(height: 3,),
                    Text(msg,style: TextStyle(color: Colors.white,fontSize: 14),)
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
