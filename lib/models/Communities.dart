// ignore_for_file: no_leading_underscores_for_local_identifiers

class Community {
  final String name;
  final int numberOfMembers;
  final bool isYourCommunity;
  final String img;

  Community({

    required this.name,
    required this.numberOfMembers,
    required this.isYourCommunity,
    this.img=""
  });

  //List of Community data
  static List<Community> communityList = [

    Community(
        name: "Data Science",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Product Manager",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Business Analyst",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Full Stack Developers",
        numberOfMembers: 0,
        isYourCommunity: true
    ),

    Community(
        name: "Digital Marketing",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Machine Learning",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "UI/UX",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Blockchain",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Cyber Security",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "Flutter",
        numberOfMembers: 0,
        isYourCommunity: true
    ),
    Community(
        name: "MERN Stack",
        numberOfMembers: 0,
        isYourCommunity: true
    ),


  ];


  static List<Community> yourCommunities() {
    return Community.communityList
        .where((element) => element.isYourCommunity == true)
        .toList();
  }

  static List<Community> notYourCommunities() {
    return Community.communityList
        .where((element) => element.isYourCommunity == false)
        .toList();
  }

}
