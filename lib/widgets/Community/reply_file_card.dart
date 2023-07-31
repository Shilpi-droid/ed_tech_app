
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'enlarged_image.dart';

class ReplyFileCard extends StatefulWidget {
  const ReplyFileCard({Key? key,required this.path,required this.message,required this.displayName,required this.sender}) : super(key: key);

  final String path;
  final String message;
  final String sender;
  final bool displayName;
  //final bool isVideo;

  @override
  State<ReplyFileCard> createState() => _ReplyFileCardState();
}
late VideoPlayerController _videoController;

class _ReplyFileCardState extends State<ReplyFileCard> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
            EnlargedImage(path: widget.path,)
        )
        );
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
          child: Container(
            height: height*.27,
            width: width*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent
            ),
            child: Card(
              color: Colors.white.withOpacity(.5),
              margin: EdgeInsets.all(13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Expanded(child: Image.network("https://skidobackend.onrender.com/uploads/$path",fit: BoxFit.fitHeight,)),
                  Padding(
                    padding:  EdgeInsets.only(left:8.0,top:5,right:8),
                    child: Text(widget.sender,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Expanded(
                      child:
                  Image.network(widget.path,fit: BoxFit.fitHeight,)),
                  widget.message.length>0?
                  Container(
                      height: 40,
                      padding: EdgeInsets.only(right: 15,top: 0),
                      child: Text(
                        widget.message,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600
                        ),
                      )):Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
