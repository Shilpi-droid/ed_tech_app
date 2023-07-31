
import 'dart:convert';
import 'dart:io';

import 'dart:ui';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skido/pages/Community/camera_page.dart';
import 'package:skido/widgets/Community/own_file_card.dart';
import 'package:video_player/video_player.dart';

import '../../models/ChatMessage.dart';
import '../../models/Communities.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../models/msg_model.dart';
import '../../widgets/Community/other_msg_widget.dart';
import '../../widgets/Community/own_msg_widget.dart';
import '../../widgets/Community/reply_file_card.dart';
import 'package:http/http.dart' as http;



class ChatBody extends StatefulWidget {
   ChatBody({Key? key,required this.community,required this.isYourCommunity,required this.name,required this.userId}) : super(key: key);

  Community community;
  bool isYourCommunity;
  String name;
  String userId;

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  IO.Socket? socket;
  List<MsgModel> listMsg=[];
  TextEditingController _msgController=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connect();
    _loadChatMessages();
  }

  void connect(){
   socket=IO.io("https://skidobackend.onrender.com/",<String,dynamic>{
     "transports":["websocket"],
     "autoconnect":false,
   });

   socket!.connect();
   socket!.onConnect((_){
      print("connected to frontend");
      socket!.emit('joinRoom',{'username':widget.name,'room':widget.community.name});
      socket!.emit('sendMsg','test emit event');

   });

  // socket!.emit('joinRoom',{'username':widget.name,'room':widget.community});
   socket!.on("sendMsgServer",(msg){
     print(msg);

     if(msg["userId"]!=widget.userId) {
       setState(() {
         listMsg.add(
             MsgModel(
                 type: msg["type"],
                 msg: msg["msg"],
                 sender: msg["senderName"],
                 path:msg["path"],
                  timestamp: DateTime.now()
             )
         );
       });
     }

   });
  }



  void sendMsg(String msg,String senderName,String path )async
  {
    try {
      print(DateTime.now());
      print(path);
      final response = await http.post(
        Uri.parse("https://skidobackend.onrender.com/chat/saveChatMessage"),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode({
          "roomId":widget.community.name,
          "sender":senderName,
          "message":msg,
          "path":path,
          "timestamp":DateTime.now().toString(),
        }),
      );

      if (response.statusCode == 200) {
        // Request was successful
        print('Response: ${jsonDecode(response.body)}');
      } else {
        // Request failed with an error
        print('Error: ${response.statusCode}');
        print('Error message: ${response.body}');
      }
    } catch (e) {
      // An error occurred while making the request
      print('Error: $e');
    }




    if(mounted){
    MsgModel ownMsg=  MsgModel(
        type: "ownMsg",
        msg: msg,
        sender: senderName,
        timestamp: DateTime.now()
    );
    listMsg.add(ownMsg);
    setState(() {
      listMsg;
    });}
    socket!.emit('sendMsg',{
      "type":"ownMsg",
      "msg":msg,
      "senderName":senderName,
      'room':widget.community.name,
      "path":path
    });
  }

  Future<List<ChatMessage>> fetchChatMessages() async {
    final databaseReference = FirebaseDatabase.instance.reference().child('chats').child(widget.community.name) ;

    DatabaseEvent dataSnapshot;
    try {
      dataSnapshot = await databaseReference.once();
    } catch (e) {
      // Handle any error that may occur during the data retrieval.
      print('Error fetching data: $e');
      return [];
    }

    Map<dynamic, dynamic>? messagesMap = dataSnapshot.snapshot.value as Map<dynamic,dynamic>;
    if (messagesMap == null) {
      return [];
    }

    List<ChatMessage> messages = messagesMap.entries.map((entry) {
      return ChatMessage.fromJson(Map<String, dynamic>.from(entry.value));
    }).toList();

    return messages;
  }

  List<ChatMessage> chatMessages = [];

  Future<void> _loadChatMessages() async {
    try {
      List<ChatMessage> messages = await fetchChatMessages();
      setState(() {
        chatMessages = messages.toList();
      });
      print("Messages fetched");
    } catch (e) {
      // Handle any error that may occur during the loading process.
      print('Error loading chat messages: $e');
    }

    // listMsg.addAll(chatMessages.map((chatMessage) {
    //   return MsgModel(
    //     type: chatMessage.type,
    //     msg: chatMessage.message,
    //     sender: chatMessage.sender,
    //     path: chatMessage.path, // Set empty path for chat messages
    //     timestamp: chatMessage.timestamp,
    //   );
    // }
    // ));

    // Retrieve images and add them to the listMsg
    for (var chatMessage in chatMessages) {
      MsgModel msgModel = MsgModel(
        type: chatMessage.type,
        msg: chatMessage.message,
        sender: chatMessage.sender,
        path: chatMessage.path,
        timestamp: chatMessage.timestamp,
      );

      // If the message contains an image, download it from Firebase Storage
      // if (chatMessage.path.isNotEmpty) {
      //   try {
      //     var ref = firebase_storage.FirebaseStorage.instance.ref(chatMessage.path);
      //     String imageUrl = await ref.getDownloadURL();
      //     // Set the downloaded image URL to the path property of msgModel
      //     msgModel.path = imageUrl;
      //   } catch (e) {
      //     print('Error loading image: $e');
      //   }
      // }

      listMsg.add(msgModel);
    }
    listMsg=listMsg.reversed.toList();
    print(listMsg);
    listMsg.sort((a, b) => a.timestamp.compareTo(b.timestamp));
  }



  void onImageSend(String path,String message,String senderName,bool isVideo,VideoPlayerController videoPlayerController) async
  {
    Navigator.pop(context);
    Navigator.pop(context);


    var request =http.MultipartRequest("POST",Uri.parse("https://skidobackend.onrender.com/chat/addImage"));
    request.files.add(await http.MultipartFile.fromPath("img", path));
    request.headers.addAll({
      "Content-type": "multipart.form-data",
    });

    http.StreamedResponse response=await request.send();
    var httpResponse=await http.Response.fromStream(response);
    var data = json.decode(httpResponse.body);
    print(response.statusCode);
    print(data[path]);
    if(mounted){
    MsgModel ownMsg=  MsgModel(
      type: "ownMsg",
      msg: message,
      sender: senderName,
      path: data['path'],
      timestamp: DateTime.now()
    );
    listMsg.add(ownMsg);
    setState(() {
      listMsg;
    });}


    try {
      print(DateTime.now());
      print(path);
      final response = await http.post(
        Uri.parse("https://skidobackend.onrender.com/chat/saveChatMessage"),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode({
          "roomId":widget.community.name,
          "sender":senderName,
          "message":message,
          "path":data['path'],
          "timestamp":DateTime.now().toString(),
        }),
      );

      if (response.statusCode == 200) {
        // Request was successful
        print('Response: ${jsonDecode(response.body)}');
      } else {
        // Request failed with an error
        print('Error: ${response.statusCode}');
        print('Error message: ${response.body}');
      }
    } catch (e) {
      // An error occurred while making the request
      print('Error: $e');
    }

    socket!.emit('sendMsg',{
      "type":"ownMsg",
      "msg":message,
      "senderName":senderName,
      'room':widget.community.name,
      "path": data['path']
    }


    );
  }

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final DatabaseReference databaseReference =
    FirebaseDatabase.instance.reference().child('chats');
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return
      Column(
        children: [
          SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: listMsg.length,
                controller: _scrollController,
                itemBuilder: (context,index) {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );

                  // if (listMsg[index].type == "ownMsg")'
                  if (listMsg[index].sender ==widget.name )
                  {
                    print(listMsg[index].sender);
                    if (listMsg[index].path.length > 0)
                      return OwnFileCard(
                        path: listMsg[index].path,
                        message: listMsg[index].msg,
                        sender: listMsg[index].sender,
                        displayName:index==0?true:listMsg[index-1].sender.compareTo(listMsg[index].sender)==0?false:true
                      );
                    else
                      return OwnMsgWidget(
                          sender: listMsg[index].sender,
                          msg: listMsg[index].msg,
                          displayName:index==0?true:listMsg[index-1].sender.compareTo(listMsg[index].sender)==0?listMsg[index-1].path!=""?true:false:true

                      );
                  }

                  else {
                    print(listMsg[index].sender);
                    if (listMsg[index].path.length > 0)
                      return ReplyFileCard(
                        path: listMsg[index].path,
                        message: listMsg[index].msg,
                        sender: listMsg[index].sender,
                        displayName: index==0?true:listMsg[index-1].sender.compareTo(listMsg[index].sender)==0?listMsg[index-1].path!=""?true:false:true,
                        // isVideo: listMsg[index].isVideo,
                      );
                    else
                      return OtherMsgWidget(
                          sender: listMsg[index].sender,
                          msg: listMsg[index].msg,
                          displayName: index==0?true:listMsg[index-1].sender.compareTo(listMsg[index].sender)==0?false:true
                      );
                  }
                }
            ),
          ),

        Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.05,vertical: height*.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height*.07,
                width: width*.15,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.white.withOpacity(0.18)),
                            borderRadius: BorderRadius.circular(15),
                            color:  Colors.white.withOpacity(.3),
                          ),
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaY: 3,
                            sigmaX: 3,
                          ),
                          child:Center(child: IconButton(onPressed: (){
                            Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: CameraPage(onImageSend: onImageSend,senderName: widget.name,)));
                          },icon: Icon(Icons.add,color: Colors.white,),)),
                        )
                      ],
                    )

                ),
              ),
              Container(
                height: height*.07,
                width:width*.72,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.white.withOpacity(0.18)),
                            borderRadius: BorderRadius.circular(15),
                            color:  Colors.white.withOpacity(.3),

                          ),
                        ),
                        BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaY: 3,
                              sigmaX: 3,
                            ),
                            child:TextFormField(
                              controller: _msgController,
                              cursorColor: Colors.white,
                              style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.white,
                              fontSize: 17
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15,top: 20),
                                border: InputBorder.none,
                                focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                ),
                                enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                ),

                                hintText: "Type here...",
                                hintStyle: TextStyle(color: Colors.white,fontSize: 17),
                                suffixIcon: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,

                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.mic,color: Colors.white,size: 30,),
                                        onPressed: () {
                                          // Perform action for icon1
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.send,color: Colors.white,size: 30,),
                                        onPressed: () {
                                          String msg=_msgController.text;
                                          if(msg.isNotEmpty) {
                                            _msgController.clear();
                                            sendMsg(msg, widget.name,"");

                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    )

                ),
              ),

            ],),
        )
      ],
    );
  }
}

