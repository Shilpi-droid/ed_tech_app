
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class OwnFileCard extends StatefulWidget {
  const OwnFileCard({
    Key? key,
    required this.path,
    required this.message,
    required this.isVideo,
    this.videoPlayerController
  }) : super(key: key);

  final String path;
  final String message;
  final bool isVideo;
  final VideoPlayerController? videoPlayerController;

  @override
  State<OwnFileCard> createState() => _OwnFileCardState();
}


class _OwnFileCardState extends State<OwnFileCard> {
  @override
  void initState() {
    super.initState();
    if (widget.isVideo && widget.videoPlayerController != null) {
      widget.videoPlayerController!.initialize().then((_) {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    if (widget.isVideo && widget.videoPlayerController != null) {
      widget.videoPlayerController!.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerRight,
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
            child: Column(
              children: [
                //Expanded(child: Image.asset("assets/Community/camera_icon.png",fit: BoxFit.fitHeight,)),
                //  Expanded(child: Image.file(File(path),fit: BoxFit.fitHeight,)),
               Expanded(
                   child:
                   widget.isVideo ?
                   Chewie(
                     controller: ChewieController(
                       videoPlayerController: widget.videoPlayerController!,
                       autoPlay: false,
                       looping: true,
                       // Additional customization options
                     ),
                   )
                   :Image.network(widget.path,fit: BoxFit.fitHeight,)
               ),
                widget.message.length>0?
                Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 15,top: 0),
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
