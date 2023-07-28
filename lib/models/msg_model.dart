// import 'dart:io';
//
// import 'package:video_player/video_player.dart';
// VideoPlayerController customVideoController = VideoPlayerController.file(File('path_to_custom_video.mp4'));
// class MsgModel{
//   String type;
//   String msg;
//   String sender;
//   String path;
//   bool isVideo;
//   VideoPlayerController videoPlayerController;
//   MsgModel({
//     required this.type,
//     required this.msg,
//     required this.sender,
//     this.path="",
//     this.isVideo=false,
//     this.videoPlayerController=VideoPlayerController.file(File('path_to_custom_video.mp4')),
// });
// }







//
// import 'dart:io';
//
// import 'package:video_player/video_player.dart';
//
// VideoPlayerController customVideoController = VideoPlayerController.file(File('path_to_custom_video.mp4'));
// class MsgModel {
//   String type;
//   String msg;
//   String sender;
//   String path;
//   bool isVideo;
//   VideoPlayerController videoController;
//
//   MsgModel({
//     required this.type,
//     required this.msg,
//     required this.sender,
//     this.path = "",
//     this.isVideo = false,
//
//   }) : videoController = VideoPlayerController.asset('assets/Community/loading_bar.mp4');
//
//   Future<void> initializeVideoController() async {
//     if (isVideo) {
//       videoController = VideoPlayerController.file(File(path));
//       await videoController.initialize();
//     }
//   }
//
//   void dispose() {
//     videoController.dispose();
//   }
// }











// import 'package:video_player/video_player.dart';
//
// class MsgModel {
//   String type;
//   String msg;
//   String sender;
//   String path;
//   bool isVideo;
//   VideoPlayerController? videoController; // Make the VideoPlayerController nullable
//
//   MsgModel({
//     required this.type,
//     required this.msg,
//     required this.sender,
//     this.path = "",
//     this.isVideo = false,
//   }) {
//     if (isVideo) {
//       // Initialize the videoController with the asset value
//       videoController = VideoPlayerController.asset('assets/Community/loading_bar.mp4');
//       // You may want to call the initialize method here or do it when needed in your app
//     }
//   }
//
//   Future<void> initializeVideoController() async {
//     if (isVideo && videoController != null) {
//       await videoController!.initialize();
//     }
//   }
//
//   void dispose() {
//     videoController?.dispose();
//   }
// }



import 'package:video_player/video_player.dart';

class MsgModel {
  String type;
  String msg;
  String sender;
  String path;
  bool isVideo;
  VideoPlayerController videoPlayerController;

  // Private constructor for internal use
  MsgModel._({
    required this.type,
    required this.msg,
    required this.sender,
    this.path = "",
    this.isVideo = false,
    required this.videoPlayerController,
  });

  // Factory constructor with default value for videoPlayerController
  factory MsgModel({
    required String type,
    required String msg,
    required String sender,
    String path = "",
    bool isVideo = false,
    VideoPlayerController? videoPlayerController,
  }) {
    return MsgModel._(
      type: type,
      msg: msg,
      sender: sender,
      path: path,
      isVideo: isVideo,
      videoPlayerController: videoPlayerController ?? VideoPlayerController.asset('assets/Community/loading_bar.mp4'),
    );
  }

  Future<void> initializeVideoController() async {
    if (isVideo) {
      await videoPlayerController.initialize();
    }
  }

  void dispose() {
    videoPlayerController.dispose();
  }
}
