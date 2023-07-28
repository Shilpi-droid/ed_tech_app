
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReplyFileCard extends StatefulWidget {
  const ReplyFileCard({Key? key,required this.path,required this.message,required this.isVideo}) : super(key: key);

  final String path;
  final String message;
  final bool isVideo;

  @override
  State<ReplyFileCard> createState() => _ReplyFileCardState();
}
late VideoPlayerController _videoController;

class _ReplyFileCardState extends State<ReplyFileCard> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
        child: Container(
          height: height*.25,
          width: width*.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Card(
            margin: EdgeInsets.all(13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child:  Column(
              children: [
                // Expanded(child: Image.network("https://skidobackend.onrender.com/uploads/$path",fit: BoxFit.fitHeight,)),
                Expanded(child:
                widget.isVideo?
                Chewie(
                  controller: ChewieController(
                    videoPlayerController: _videoController,
                    autoPlay: true,
                    looping: true,
                    // Additional customization options
                  ),
                )
                    :
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
    );
  }
}
