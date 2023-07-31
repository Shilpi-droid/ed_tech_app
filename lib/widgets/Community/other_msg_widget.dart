
import 'package:flutter/material.dart';

class OtherMsgWidget extends StatelessWidget {
  const OtherMsgWidget({Key? key,required this.sender,required this.msg,required this.displayName}) : super(key: key);

  final String sender;
  final String msg;
  final bool displayName;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          displayName?
          Padding(
            padding: EdgeInsets.only(right: width*.01,left: width*.03),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow

              ),
              child: Center(
                  child: Text(
                    sender.substring(0,1),
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:25 ),
                  )),

            ),
          )
              :Container(
            padding: EdgeInsets.only(left: width*.135) ,
          ),
          Container(
              child:ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: width-60
                ),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  color:Colors.white.withOpacity(.5),
                  //Colors.white.withOpacity(.5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.02,vertical: 10),
                    child:
                    displayName?
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(sender,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        const SizedBox(height: 3,),
                        Text(msg,style: TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ):
                    Text(msg,style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
