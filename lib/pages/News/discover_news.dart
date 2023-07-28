
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/NewsQuery.dart';
import '../../widgets/discover_news_card.dart';

class DiscoverNews extends StatefulWidget {
  const DiscoverNews({Key? key}) : super(key: key);

  @override
  State<DiscoverNews> createState() => _DiscoverNewsState();
}

class _DiscoverNewsState extends State<DiscoverNews>  with TickerProviderStateMixin{
  final String apikey="55c6f880d2028a88f3d95b222ba267a0";

  List<NewsQuery> techNewsList = <NewsQuery>[];
  List<NewsQuery> worldNewsList = <NewsQuery>[];
  List<NewsQuery> entNewsList = <NewsQuery>[];
  List<NewsQuery> finNewsList = <NewsQuery>[];
  List<NewsQuery> sportsNewsList = <NewsQuery>[];
  List<NewsQuery> healthNewsList = <NewsQuery>[];
  bool isLoading = true;

  getTechNewsByQuery() async {
    String url =
        'https://gnews.io/api/v4/search?q=technology&lang=en&country=us&max=10&apikey=' + apikey;
          // "https://newsapi.org/v2/top-headlines/sources?category=technology&apiKey=0b73ac8480ab4c80a89296bcf0c83e4f";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
   // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        techNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }

  getWorldNewsByQuery() async {
    String url =
        'https://gnews.io/api/v4/search?q=headlines&lang=en&country=us&max=10&apikey=' + apikey;
    // "https://newsapi.org/v2/top-headlines/sources?category=technology&apiKey=0b73ac8480ab4c80a89296bcf0c83e4f";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
    // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        worldNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }

  getEntNewsByQuery() async {
    String url =
        'https://gnews.io/api/v4/search?q=hollywood&lang=en&country=us&max=10&apikey=' + apikey;
    // "https://newsapi.org/v2/top-headlines/sources?category=technology&apiKey=0b73ac8480ab4c80a89296bcf0c83e4f";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
    // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        entNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }

  getFinNewsByQuery() async {
    String url =
        'https://gnews.io/api/v4/search?q=finance&lang=en&country=us&max=10&apikey=' + apikey;
    // "https://newsapi.org/v2/top-headlines/sources?category=technology&apiKey=0b73ac8480ab4c80a89296bcf0c83e4f";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
    // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        finNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }

  getSportsNewsByQuery() async {
    String url =
        'https://gnews.io/api/v4/search?q=sports&lang=en&country=us&max=10&apikey=' + apikey;
    // "https://newsapi.org/v2/top-headlines/sources?category=technology&apiKey=0b73ac8480ab4c80a89296bcf0c83e4f";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
    // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        sportsNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }

  getHealthNewsByQuery() async {
    String url =
        'https://gnews.io/api/v4/search?q=health&lang=en&country=us&max=10&apikey=' + apikey;
    // "https://newsapi.org/v2/top-headlines/sources?category=technology&apiKey=0b73ac8480ab4c80a89296bcf0c83e4f";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(response.body);
    print("response");
    // print(data);
    if (data != null && data.containsKey("articles") && data["articles"] != null) {
      List<dynamic> articles = data["articles"];
      for (int i = 0; i < articles.length; i++) {
        print("hello");
        NewsQuery newsQuery = NewsQuery.fromMap(articles[i]);
        healthNewsList.add(newsQuery);
      }
    }
    // print(techNewsModelList);
    setState(() {
      isLoading = false;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTechNewsByQuery();
    getWorldNewsByQuery();
    getEntNewsByQuery();
    getFinNewsByQuery();
    getSportsNewsByQuery();
    getHealthNewsByQuery();
    // getNewsofIndia();
  }


  //
  // List<dynamic> news = [];
  // List<Article> articles=[];
  // bool isLoading = true;
  // String errorMessage = '';
  //
  //
  //
  // ApiClient apiClient = ApiClient();
  // Future<void> fetchNews() async {
  //   try {
  //      articles = await apiClient.fetchArticles("Technology");
  //     // Process and use the articles as needed
  //     for (Article article in articles) {
  //       print('Title: ${article.title}');
  //       print('Description: ${article.description}');
  //       print('URL: ${article.url}');
  //       print('Image URL: ${article.imageUrl}');
  //       print('Published At: ${article.publishedAt}');
  //       print('---');
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   fetchNews();
  //   print(articles);
  // }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    TabController _tabController=TabController(length: 6, vsync: this, );
    return  Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                SizedBox(height: height*.01,),
                Padding(
                  padding: EdgeInsets.only(left: width*.01),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,),),
                ),
               Padding(
                 padding: EdgeInsets.only(left: width*.05),
                 child: Text("Discover",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
               Padding(
                 padding: EdgeInsets.only(left: width*.05),
                 child: Text("News from all over the world",style: TextStyle(fontSize: 16,color: Colors.white),),
               ),
               SizedBox(height: height*.04,),
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*.05),
                  child: Container(

                    height: height*.06,
                    width: width*.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:Border.all(color: Colors.white.withOpacity(0.5)),),
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
                                      Colors.white.withOpacity(.4),
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
                              child:TextField(
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                                  suffixIcon: Icon(Icons.filter_alt_rounded,color: Colors.white,),
                                  hintText: "Search",
                                  hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),

                                  contentPadding: EdgeInsets.symmetric(vertical:11,horizontal: 10),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                                  ),
                                ),
                                maxLines: 1,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.white,
                                    fontSize: 14
                                ),
                              ),
                            )
                          ],
                        )

                    ),
                  ),
                ),
               // SizedBox(height: height*.01,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: width*.05),
                 child: Container(
                   height: height*.75,
                   width:width*.9,
                   child:
                   DefaultTabController(
                     length: 6,
                     child: Container(
                       //backgroundColor: Colors.transparent,
                       child: Column(
                         children: [
                           SizedBox(height: 20),
                           TabBar(
                             controller: _tabController,
                             isScrollable: true,
                             labelStyle: TextStyle(
                               color: Colors.white,
                               fontSize: 22,
                               fontWeight: FontWeight.bold,
                             ),
                             unselectedLabelStyle: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                             ),
                             indicatorColor: Colors.white,
                             indicatorSize: TabBarIndicatorSize.tab,
                             indicatorWeight: 3,
                             tabs: [
                               _buildTab('Tech', 100),
                               _buildTab('World', 100),
                               _buildTab('Entertainment', 150),
                               _buildTab('Finance', 100),
                               _buildTab('Sports', 100),
                               _buildTab('Health', 100),
                             ],
                           ),
                           Expanded(
                             child: TabBarView(
                               controller: _tabController,
                               children: [
                                 Container(
                                   height: height*.75,
                                   child: ListView.builder(
                                     itemCount: techNewsList.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       // Build your list item widget here
                                       return DiscoverNewsCard(news:techNewsList[index],category:"Tech");
                                     },
                                   )
                                   ,
                                 ),

                                 Container(
                                   height: height*.75,
                                   child: ListView.builder(
                                     itemCount: worldNewsList.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       // Build your list item widget here
                                       return DiscoverNewsCard(news:worldNewsList[index],category:"Tech");
                                     },
                                   )
                                   ,
                                 ),
                                 Container(
                                   height: height*.75,
                                   child: ListView.builder(
                                     itemCount: entNewsList.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       // Build your list item widget here
                                       return DiscoverNewsCard(news:entNewsList[index],category:"Tech");
                                     },
                                   )
                                   ,
                                 ),
                                 Container(
                                   height: height*.75,
                                   child: ListView.builder(
                                     itemCount: finNewsList.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       // Build your list item widget here
                                       return DiscoverNewsCard(news:finNewsList[index],category:"Tech");
                                     },
                                   )
                                   ,
                                 ),
                                 Container(
                                   height: height*.75,
                                   child: ListView.builder(
                                     itemCount: sportsNewsList.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       // Build your list item widget here
                                       return DiscoverNewsCard(news:sportsNewsList[index],category:"Tech");
                                     },
                                   )
                                   ,
                                 ),
                                 Container(
                                   height: height*.75,
                                   child: ListView.builder(
                                     itemCount: healthNewsList.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       // Build your list item widget here
                                       return DiscoverNewsCard(news:healthNewsList[index],category:"Tech");
                                     },
                                   )
                                   ,
                                 ),

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   )

                 )
                 ),


             ],
           )

          ),
        ),
      ),
    );
  }
  Widget _buildTab(String text, double width) {
    return Container(
      width: width,
      alignment: Alignment.center,
      child: Tab(text: text,),
    );
  }

}



// DefaultTabController(
// length: 5,
// child: CustomScrollView(
// slivers: [
// SliverAppBar(
//
// backgroundColor: Colors.transparent,
// automaticallyImplyLeading: false,
// toolbarHeight: kToolbarHeight,
// pinned: true,
// flexibleSpace: TabBar(
// controller: _tabController,
// isScrollable: true,
// labelStyle: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
// unselectedLabelStyle:TextStyle(color: Colors.white,fontSize: 20) ,
// indicatorColor: Colors.white,
// indicatorSize: TabBarIndicatorSize.tab,
// indicatorWeight: 3,
// tabs: [
// _buildTab('Tech', 100),
// _buildTab('World', 100),
// _buildTab('Entertainment', 150),
// _buildTab('Finance', 100),
// _buildTab('Sports', 100),
// _buildTab('Health', 100),
// ],
// ),
// ),
// SliverFillRemaining(
// child: TabBarView(
//
// controller: _tabController,
// children: [
// SizedBox(
// height:00,
// child: DiscoverNewsCard(
// news: NewsQuery(
// title: "I want a chocolate",
// desc:"I am really really craving a chocolate",
// img: "assets/",
// author: "me",
// source: "me"
// )),
// ),
//
//
//
// Container(
// child: Center(
// child: Text('Tab 2 Content'),
// ),
// ),
// Container(
// child: Center(
// child: Text('Tab 3 Content'),
// ),
// ),
// Container(
// child: Center(
// child: Text('Tab 4 Content'),
// ),
// ),
// Container(
// child: Center(
// child: Text('Tab 5 Content'),
// ),
// ),
// Container(
// child: Center(
// child: Text('Tab 6 Content'),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),