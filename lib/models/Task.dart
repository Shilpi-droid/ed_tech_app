// ignore_for_file: no_leading_underscores_for_local_identifiers

class Task {
  String title ;
  String time;
  String mode;

  Task({
    required this.title,
    required this.time,
    required this.mode
  });

  //List of Notification data
  static List<Task> tasks = [
    Task(
        title: "Meet with Rahul",
        time: "10:00 am",
        mode: "Online"
    ),
  ];

}
