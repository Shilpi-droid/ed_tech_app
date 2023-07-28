
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skido/models/NewsQuery.dart';
import 'package:skido/pages/News/news_detail.dart';

class DiscoverNewsCard extends StatelessWidget {
  const DiscoverNewsCard({Key? key,required this.news,required this.category}) : super(key: key);

  final NewsQuery news;
  final String category;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewsDetail(news: news,)),

        );
      },
      child: Padding(
        padding:  EdgeInsets.only(top: height*.03),
        child: Container(
          height: height*.17,
          width: width*.9,

          child: Row(
            children: [
              Container(
                width: width*.36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(news.img),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(
                width: width*.54,
                child: Column(
                  children: [

                    Container(
                      padding: EdgeInsets.only(left: 10,top: 12),
                      child: Text(
                        news.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(
                        fontSize: 17,
                          color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left:10.0),
                      child: Row(
                        children: [
                              Text("${category} News: ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                          Text("${formatDateTime(news.date)}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,),
                          )

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
String formatDateTime(String dateTimeString) {
  DateTime dateTime = DateTime.parse(dateTimeString);
  String formattedTime = DateFormat('h:mm a').format(dateTime);
  return formattedTime;
}