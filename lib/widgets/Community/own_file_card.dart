
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'enlarged_image.dart';

class OwnFileCard extends StatefulWidget {
  const OwnFileCard({
    Key? key,
    required this.path,
    required this.message,
    required this.sender,
    required this.displayName
    // required this.isVideo,
    // this.videoPlayerController
  }) : super(key: key);

  final String path;
  final String message;
  final String sender;
  final bool displayName;
  // final bool isVideo;
  // final VideoPlayerController? videoPlayerController;

  @override
  State<OwnFileCard> createState() => _OwnFileCardState();
}


class _OwnFileCardState extends State<OwnFileCard> {
  @override
  // void initState() {
  //   super.initState();
  //   if (widget.isVideo && widget.videoPlayerController != null) {
  //     widget.videoPlayerController!.initialize().then((_) {
  //       setState(() {});
  //     });
  //   }
  // }
  //
  // @override
  // void dispose() {
  //   if (widget.isVideo && widget.videoPlayerController != null) {
  //     widget.videoPlayerController!.dispose();
  //   }
  //   super.dispose();
  // }
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
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
          child: Container(
            height: height*.3,
            width: width*.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent
            ),
            child: Card(
              color: Colors.white.withOpacity(.5),
              margin: EdgeInsets.all(13),
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),

                  )
              ),
              child:
              widget.message.length>0?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:8.0,top:5,right:8),
                    child: Text(widget.sender,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  SizedBox(height: 6,),
                  Expanded(child: Image.network(widget.path,fit: BoxFit.cover,)),
                ],
              )
              :
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:8.0,top:5,right:8),
                    child: Text(widget.sender,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  SizedBox(height: 6,),
                  Expanded(child: Image.network(widget.path,fit: BoxFit.fitWidth,)),

                  Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 15,top: 0),
                      child: Text(
                        widget.message,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600
                        ),
                      ))
                ],
              )
              ,
            ),
          ),
        ),
      ),
    );
  }
}
