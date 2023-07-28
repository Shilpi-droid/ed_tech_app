
import 'package:flutter/material.dart';
import 'package:skido/widgets/discover_news_card.dart';

import '../models/NewsQuery.dart';

class BreakingNewsCard extends StatelessWidget {
  const BreakingNewsCard({Key? key,required this.news}) : super(key: key);

  final NewsQuery news;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height:height*.2,
      width: width*.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      color: Colors.transparent,
      ),
      child: Column(children: [
        Container(
          height: height*.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(news.img),
              fit: BoxFit.cover
            )
          ),
        ),
        Text(news.title,maxLines: 3,textAlign: TextAlign.center,
          style: TextStyle(color:
        Colors.white,fontSize: 16),),
        SizedBox(height: 20,),
        Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left:20),
              child: Text(formatDateTime(news.date),maxLines: 4,textAlign: TextAlign.center,
                style: TextStyle(color:
                Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          ],
        ),

      ],),
    );
  }
}
