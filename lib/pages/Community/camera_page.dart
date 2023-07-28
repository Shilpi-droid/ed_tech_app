


import 'dart:convert';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skido/pages/Community/camera_view_page.dart';
import 'package:skido/pages/Community/chat_body.dart';
import 'package:video_player/video_player.dart';


import '../../models/Communities.dart';
import '../../models/msg_model.dart';

class CameraPage extends StatefulWidget {
   CameraPage({Key? key,required this.senderName,required this.onImageSend}) : super(key: key);

   final Function onImageSend;
   final String senderName;
  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage>with SingleTickerProviderStateMixin {

  // File? _selectedImage;
  // File? _selectedVideo;
  // VideoPlayerController? _videoPlayerController=VideoPlayerController.asset("assets/Community/loading_bar.mp4")
  // ..initialize().then((_) {
  // // setState(() {});
  // });


  // Future<void> _pickImage(BuildContext context) async {
  //   final picker = ImagePicker();
  //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     setState(() {
  //       _selectedImage = File(pickedImage.path);
  //     });
  //   }
  //   Navigator.push(context,MaterialPageRoute(builder: (builder)=>CameraViewPage(path: pickedImage!.path, onImageSend: widget.onImageSend,senderName: widget.senderName,isVideo: false,)));
  // }
  //
  // Future<void> _pickCameraImage(BuildContext context) async {
  //   final picker = ImagePicker();
  //   final pickedImage = await picker.pickImage(source: ImageSource.camera);
  //   if (pickedImage != null) {
  //     setState(() {
  //       _selectedImage = File(pickedImage.path);
  //     });
  //   }
  //   Navigator.push(context,MaterialPageRoute(builder: (builder)=>CameraViewPage(path: pickedImage!.path, onImageSend: widget.onImageSend,senderName: widget.senderName,isVideo: false,)));
  // }
  //
  // Future<void> _pickVideo() async {
  //   final picker = ImagePicker();
  //   final pickedVideo = await picker.pickVideo(source: ImageSource.gallery);
  //   if (pickedVideo != null) {
  //     setState(() {
  //       _selectedVideo = File(pickedVideo.path);
  //       _videoController = VideoPlayerController.file(_selectedVideo!)
  //         ..initialize().then((_) {
  //           setState(() {});
  //         });
  //     });
  //   }
  //   Navigator.push(context,MaterialPageRoute(builder: (builder)=>CameraViewPage(path: pickedVideo!.path, onImageSend: widget.onImageSend, senderName: widget.senderName,isVideo: true,)));
  // }

  VideoPlayerController? _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset("assets/Community/loading_bar.mp4");
    _videoPlayerController!.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    super.dispose();
  }

  void navigateToCameraViewPage(String path) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraViewPage(
          path: path,
          onImageSend: widget.onImageSend,
          senderName: widget.senderName,
          isVideo: true,
          videoPlayerController: _videoPlayerController!,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        // ChatBody(
        //     community: widget.community,
        //     isYourCommunity: widget.isYourCommunity,
        //     name: widget.name,
        //     userId: widget.userId
        // ),
        Opacity(
          opacity: 0.75,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
              height: height*.2,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:
                    ()async{
                      final picker = ImagePicker();
                      final pickedImage = await picker.pickImage(source: ImageSource.camera);
                      _videoPlayerController = VideoPlayerController.asset("assets/Community/loading_bar.mp4")
                              ..initialize().then((_) {
                                setState(() {});
                              });

                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder)=>
                              CameraViewPage(
                                path: pickedImage!.path,
                                onImageSend: widget.onImageSend,
                                senderName: widget.senderName,
                                isVideo: false,
                                videoPlayerController: _videoPlayerController!,

                              )));
                    },
                    //_pickCameraImage(context),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width*.06,right: width*.05,),
                          child: Image.asset("assets/Community/camera_icon.png",scale: 4,),
                        ),
                      Text("Camera",style: TextStyle(
                          color: Color(0xff5F6097),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: "Montserrat"
                      )
                      ),
                    ],),
                  ),
                  GestureDetector(
                    onTap: ()async{
                      final picker = ImagePicker();
                      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
                      _videoPlayerController = VideoPlayerController.asset("assets/Community/loading_bar.mp4")
                        ..initialize().then((_) {
                          setState(() {});
                        });
                      Navigator.push(context,MaterialPageRoute(builder: (builder)=>
                          CameraViewPage(
                            path: pickedImage!.path,
                            onImageSend: widget.onImageSend,
                            senderName: widget.senderName,isVideo: false,
                            videoPlayerController: _videoPlayerController!,

                          )));
                    },
                    //_pickImage(context),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: width*.06,right: width*.05,),
                        child: Image.asset("assets/Community/gallery_icon.png",scale: 4,),
                      ),
                      Text("Image Gallery",style: TextStyle(
                          color: Color(0xff5F6097),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: "Montserrat"
                      )
                      )
                    ],),
                  ),
                  GestureDetector(
                    onTap:()async{
                      final picker = ImagePicker();
                      final pickedVideo = await picker.pickVideo(source: ImageSource.gallery);
                      _videoPlayerController = VideoPlayerController.file(File(pickedVideo!.path));
                      await _videoPlayerController?.initialize();
                      setState(() {});
                      Navigator.push(context,MaterialPageRoute(builder: (builder)=>
                      CameraViewPage(
                      path: pickedVideo!.path,
                      onImageSend: widget.onImageSend,
                      senderName: widget.senderName,isVideo: true,
                        videoPlayerController: _videoPlayerController!,
                      )));

                    },
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: width*.06,right: width*.05,),
                        child: Image.asset("assets/Community/video_gallery_icon.png",scale: 4,),
                      ),
                      Text("Video Gallery",style: TextStyle(
                          color: Color(0xff5F6097),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: "Montserrat"
                      )
                      )
                    ],),
                  )
                ],
              ),
            ),
        ),

        // SlideTransition(
        //   position: _animation,
        //   child: Container(
        //     height: height*.2,
        //     width: width,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(20),
        //         topRight: Radius.circular(20),
        //       ),
        //       color: Colors.white
        //     ),
        //     // color: Colors.blue,
        //   ),
        // ),
      ],
    );
  }
}
