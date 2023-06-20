
class Mentor {
  String name;
  String contact;
  String email;
  String linkedinUrl;
  String orgName;
  String workedAt;
  String qualification;
  int experience;
  int priorMentoringExp;
  String engagementType;
  String topic;
  bool ytWebinar;
  String motivation;
  int followers;
  String orgImg;



  Mentor({
   required this.name,
    required this.contact,
    required this.email,
    required this.linkedinUrl,
    required this.qualification,
    this.orgName="",
    this.workedAt="",
    required this.experience,
    this.priorMentoringExp=0,
    this.engagementType="",
    required this.topic,
    this.ytWebinar=false,
    this.motivation="",
    this.followers=0,
    this.orgImg=""
  });


  static List<Mentor> mentorsList = [
    Mentor(
       name:"Ravi Goyal",
        contact:"",
        email: "",
        linkedinUrl: "" ,
        topic: "",
        experience: 10,
        qualification: "SDE",
        priorMentoringExp:2,
      orgName: "Amazon"
    ),
    Mentor(
      name:"Vaibhav Verma",
      contact:"",
      email: "",
      linkedinUrl: "" ,
      topic: "",
      experience: 10,
      qualification: "Sr. Engineering Manager",
      priorMentoringExp:2,
      orgName: "Microsoft"
    ),
    Mentor(
        name:"Indrees Husain",
        contact:"",
        email: "",
        linkedinUrl: "" ,
        topic: "",
        experience: 10,
        qualification: "Software Engineer",
        priorMentoringExp:2,
        orgName: "Amazon",
        orgImg: "assets/MentorPage/amazon.png"

    ),
    Mentor(
        name:"Prateek Rathore",
        contact:"",
        email: "",
        linkedinUrl: "" ,
        topic: "",
        experience: 10,
        qualification: "System Engineer",
        priorMentoringExp:3,
        orgName: "Uber",
        orgImg: "assets/MentorPage/uberlogo.png"
    ),
    Mentor(
        name:"Sonal",
        contact:"",
        email: "",
        linkedinUrl: "" ,
        topic: "",
        experience: 10,
        qualification: "Software Engineer",
        priorMentoringExp:1,
        orgName: "Google",
        orgImg: "assets/MentorPage/google.png"
    ),
  ];

}
