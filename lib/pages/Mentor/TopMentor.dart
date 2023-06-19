
import 'package:skido/models/Experience.dart';

class TopMentor {
  String name;
  List<Experience> experience;
  int rating;
  bool isFree;
  String contact;
  List<DateTime> availability;
  String followers;
  String pfp;


  TopMentor({
    required this.name,
    required this.experience,
    required this.rating,
    required this.isFree,
    required this.contact,
    required this.availability,
    required this.followers,
    required this.pfp,
  });


  static List<TopMentor> topMentorList = [

    TopMentor(
       name: "Nikhil Gohale",
      experience: Experience.expList1,
      rating: 5,
      isFree: true,
      contact: "987654321",
      availability: [DateTime.now().subtract(Duration(days: 5)),DateTime.now().add(Duration(days: 5))],
      followers: "10k+",
      pfp: "assets/MentorPage/mentor_pfp1.png"
    ),

    TopMentor(
        name: "Sofia Wilson",
        experience: Experience.expList2,
        rating: 5,
        isFree: false,
        contact: "987654321",
        availability: [DateTime.now().subtract(Duration(days: 5)),DateTime.now().add(Duration(days: 5))],
        followers: "10k+",
        pfp: "assets/MentorPage/mentor_pfp2.png"
    ),
    TopMentor(
        name: "Nisha Roy",
        experience: Experience.expList2,
        rating: 5,
        isFree: false,
        contact: "987654321",
        availability: [DateTime.now().subtract(Duration(days: 5)),DateTime.now().add(Duration(days: 5))],
        followers: "10k+",
        pfp: "assets/MentorPage/mentor_pfp3.png"
    ),
    TopMentor(
        name: "Peter Grey",
        experience: Experience.expList4,
        rating: 5,
        isFree: true,
        contact: "987654321",
        availability: [DateTime.now().subtract(Duration(days: 5)),DateTime.now().add(Duration(days: 5))],
        followers: "10k+",
        pfp: "assets/MentorPage/mentor_pfp4.png"
    ),

  ];

}
