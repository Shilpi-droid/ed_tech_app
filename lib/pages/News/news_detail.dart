
import 'package:flutter/material.dart';

import '../../models/NewsQuery.dart';
import '../../widgets/discover_news_card.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({Key? key,required this.news}) : super(key: key);
  final NewsQuery news;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
            Positioned(
              top: 0,
              child: Container(
                height: height*.55,
                width: width,
                //color: Colors.pink,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(news.img),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height*.64,
              width: width,
              // color: Colors.yellow,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white
              ),
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: height*.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xff5F6097)
                            ),
                            height: 40,
                            width: width*.45,
                            child: Center(
                              child: Text(
                               "By: ${news.source}",
                                style: TextStyle(
                                  color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xff5F6097)
                            ),
                            height: 40,
                            width: width*.35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.watch_later,color: Colors.white,),
                                Text(
                                  "${formatDateTime(news.date)}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height*.03,),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: width*.08),
                            child: Text("Highlights",
                              style: TextStyle(
                                  color: Color(0xff5F6097),
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),),
                          ),
                        ],
                      ),
                      Container(
                        height: height*.17,
                        // color: Colors.pink,
                        padding: EdgeInsets.symmetric(horizontal: width*.07,vertical: 10),
                        child: Text(
                          news.desc,
                          maxLines: 10,
                          style: TextStyle(
                            color: Color(0xff5F6097),
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        height: height*.45,
                        // color: Colors.pink,
                        padding: EdgeInsets.symmetric(horizontal: width*.07,vertical: 10),
                        child: Text(
                          news.content,
                          maxLines: 10,
                          style: TextStyle(
                            color: Color(0xff5F6097),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
