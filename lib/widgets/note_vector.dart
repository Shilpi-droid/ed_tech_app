
import 'package:flutter/material.dart';
import 'glass_icon.dart';
import 'note_tab.dart';

class Note extends StatelessWidget {
  const Note({Key? key,required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          GlassIcon(icon: Icons.circle,size: 25,iconColor: Colors.white,iconSize: 12,),
          SizedBox(width: width*.09,),
          NoteContainer(text:text),
        ],
      ),
    );
  }
}
