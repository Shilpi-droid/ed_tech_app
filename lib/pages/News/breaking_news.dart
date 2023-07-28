
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../../models/NewsQuery.dart';
import 'package:http/http.dart' as http;

import '../../widgets/breaking_news_card.dart';

class BreakingNews extends StatefulWidget {
  const BreakingNews({Key? key}) : super(key: key);

  @override
  State<BreakingNews> createState() => _BreakingNewsState();
}

class _BreakingNewsState extends State<BreakingNews> {
  final String apikey="55c6f880d2028a88f3d95b222ba267a0";

  List<NewsQuery> breakingNewsList = <NewsQuery>[];
  bool isLoading = true;
  getBreakingNews() async {
    String url =
        'https://gnews.io/api/v4/search?q=technology&lang=en&country=us&max=10&apikey=' + apikey;

    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
    // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        breakingNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    getBreakingNews();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child:Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: height*.4,
                    width: width,
                    //color: Colors.pink,
                    decoration: BoxDecoration(

                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),

                        image: DecorationImage(
                            image: NetworkImage(breakingNewsList[0].img),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: height*.6,
                    width: width,
                    // color: Colors.yellow,
                    child: Column(
                      children: [
                        SizedBox(height: height*.05,),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left:width*.05),
                              child: Text("Breaking news ",
                                  style: TextStyle(fontSize:25,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        SizedBox(height: height*.01,),
                        Container(
                          height: height*.5,
                          padding: EdgeInsets.symmetric(horizontal: width*.05),
                          child: GridView.builder(
                            itemCount: breakingNewsList.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: .7,
                              crossAxisCount: 2, // Number of columns in the grid
                              crossAxisSpacing: 15.0, // Spacing between columns
                              mainAxisSpacing: 10.0, // Spacing between rows
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return BreakingNewsCard(news:breakingNewsList[index]);
                            },
                          ),
                        )

                      ],
                    ),

                  ),
                ),
                Positioned(
                  top: height*.28,
                    left: width*.05,
                    child: NewsOfTheDay()
                ),
                Positioned(
                    top: height*.33,
                    left: width*.01,
                    right: width*.01,
                    child: Container(

                      height: height*.1,
                      width: width,
                      child: Text(breakingNewsList[0].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),
                    )
                )
              ],
            )
        ),
      ),
    );
  }
}

class NewsOfTheDay extends StatelessWidget {
  const NewsOfTheDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;
    return Container(
      height: 35,
        width: width*.4,
        decoration: BoxDecoration(
        border:Border.all(color: Colors.white.withOpacity(0.45)),
        borderRadius: BorderRadius.circular(15),),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.45),
                        Colors.white.withOpacity(0.0),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:Center(child: Text("News of the day",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)),
              )
            ],
          )

      ),
    );
  }
}

