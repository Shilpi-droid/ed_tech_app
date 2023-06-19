
import 'package:flutter/material.dart';
import '../../pages/Mentor/TopMentor.dart';

class MentorListCard extends StatelessWidget {
   MentorListCard({Key? key,required this.mentor}) : super(key: key);

  TopMentor mentor;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.3,
      width: width*.43,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/MentorPage/mentorlist_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: height*.01,),
                Row(
                  children: [
                    Text(
                      mentor.name,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      mentor.experience[mentor.experience.length-1].jobTitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      ),),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: List.generate(5, (index) => Icon(
                            index <mentor.rating ? Icons.star : Icons.star_border,
                            size: 15,
                            color: index < mentor.rating ? Colors.white : Colors.black38,
                          ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          mentor.isFree?"Free":"Paid",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width*.04,),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft:  Radius.circular(15),
                            bottomLeft:  Radius.circular(15),
                          ),
                          color:Color(0xff50518F)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(Icons.message,color: Colors.white,size: 15,),
                      ),
                    ),
                    SizedBox(width: 3,),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft:  Radius.circular(15),
                            bottomLeft:  Radius.circular(15),
                          ),
                          color:Color(0xff50518F)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green
                          ),
                          child: Icon(Icons.call,color: Colors.white,size: 12,),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          Container(
              height: height*.18,
              width: width*.28,
              decoration:BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(mentor.pfp),
                  fit: BoxFit.contain
                )
              )
          )
        ],
      ),
    );
  }
}

