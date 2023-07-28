import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CameraViewPage extends StatefulWidget {
  CameraViewPage({Key? key, required this.path,
    required this.onImageSend,
    required this.senderName,
    required this.isVideo,
    required this.videoPlayerController,
  }) : super(key: key);
  final String path;
  final Function onImageSend;
  final String senderName;
  static TextEditingController _controller=TextEditingController();
  final bool isVideo;
  final VideoPlayerController videoPlayerController;

  @override
  State<CameraViewPage> createState() => _CameraViewPageState();
}

class _CameraViewPageState extends State<CameraViewPage> {

  @override
  void initState() {
    super.initState();
    if (widget.isVideo) {
      widget.videoPlayerController.initialize().then((_) {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.isVideo) {
      widget.videoPlayerController.dispose();
    }
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Icon(
                Icons.crop_rotate,
                size: 27,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.emoji_emotions_outlined,
                size: 27,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.title,
                size: 27,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.edit,
                size: 27,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              child:widget.isVideo?
              Chewie(
                controller: ChewieController(
                  videoPlayerController: widget.videoPlayerController,
                  autoPlay: true,
                  looping: true,
                  // Additional customization options
                ),
              ):
              Image.file(
                File(widget.path),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.black38,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: TextFormField(
                  controller: CameraViewPage._controller,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  maxLines: 6,
                  minLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add Caption....",
                      prefixIcon: Icon(
                        Icons.add_photo_alternate,
                        color: Colors.white,
                        size: 27,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      suffixIcon: InkWell(
                        onTap: (){
                          widget.onImageSend(
                              widget.path,
                              CameraViewPage._controller.text.trim(),
                              widget.senderName,
                              widget.isVideo,
                              widget.videoPlayerController
                          );
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.tealAccent[700],
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 27,
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
