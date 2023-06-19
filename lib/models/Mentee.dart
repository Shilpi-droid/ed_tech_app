
class Mentee {
  String name;
  String status;
  String review;
  String duration;
  int rating;



  Mentee({
    required this.name,
    required this.status,
    required this.duration,
    required this.review,
    required this.rating
  });


  static List<Mentee> menteesList = [
    Mentee(
        name:"Yeswanth Kokku",
        review:"A big shout to my mentor Pavan. He created an environment between us such a way that if i found difficulty in any concepts or any understandings i used to discuss with him & right away we used to have sessions. His tips are very helpful for me during interview.",
        status:"Techmojo[TCS] SKIDO Alumni",
        duration:"6 months",
        rating: 5
    ),
    Mentee(
        name:  "Nilesh Singla",
        review:"I am dedicating this post to SKIDO Academy for their huge contribution in upskilling a lot of people & it is surely the best career decision i have made.",
        status:"Software Developer| OneCard | FPL Technologies",
        duration:"5 months",
        rating: 5
    ),

  ];

}
