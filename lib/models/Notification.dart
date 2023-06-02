// ignore_for_file: no_leading_underscores_for_local_identifiers

class Notif {
  String title1 ;
  String title2 ;
  String title3 ;
  String time;

  Notif({
    this.title1="",
    this.title2="",
    this.title3="",
    this.time= ""
  });

  //List of Notification data
  static List<Notif> notificationsList = [
    Notif(
        title1: "Data analysis classes by Mohit Naik",
        title2: "Market Basket Analysis",
        title3: "Time from 10:00 to 14:00",
        time: "Today 07:00 "
    ),
    Notif(
        title1: "Marian Fusek changed",
        title2: "Best UI/UX practices",
        title3: "Time from 18:00 to 18:30",
        time: "Today 11:56"
    ),
    Notif(
        title1: "Maya Everydayidraw Cancelled the lesson",
        title3: "Time from 18:00 to 18:30",
        time: "Yesterday 8:15"
    ),
    Notif(

        title1: "Maya Everydayidraw wrote a review about you",
        //title3: "Time from 18:00 to 18:30",
        time: "6th March, 2023 18:15"
    ),
    Notif(
        title1: "Product Management  classes by Neeraj Hari",
        title2: "Character Illustration",
        //title3: "Time from 18:00 to 18:30",
        time: "Today 11:56"
    ),
  ];

}
