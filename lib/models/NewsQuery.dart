class NewsQuery
{
  late String title;
  late String desc;
  late String img;
  // late String url;
  late String author;
  late String source;
  late String date;
  late String content;

  NewsQuery({
    this.title = "" ,
    this.desc = "" ,
    this.img = "" ,
    this.author="",
    this.source="",
    this.date="",
    this.content="",
    // this.url = "SOME URL",

  });

  factory NewsQuery.fromMap(Map news)
  {
    return NewsQuery(
        title: news["title"],
        desc: news["description"],
        img: news["image"],
        source: news["source"]["name"],
        date:news["publishedAt"],
        content:news["content"]
    );
  }
}













// class Article {
//   final String title;
//   final String description;
//   final String url;
//   final String imageUrl;
//   final DateTime publishedAt;
//
//   Article({
//     required this.title,
//     required this.description,
//     required this.url,
//     required this.imageUrl,
//     required this.publishedAt,
//   });
//
//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       title: json['title'],
//       description: json['description'],
//       url: json['url'],
//       imageUrl: json['urlToImage'],
//       publishedAt: DateTime.parse(json['publishedAt']),
//     );
//   }
// }

