
import 'package:flutter/material.dart';
import 'package:skido/pages/create_cv_page.dart';
import 'package:skido/pages/payment_details_page.dart';
import 'package:skido/pages/sponsor_page.dart';

import '../widgets/CV_button.dart';
import '../widgets/WP1UI.dart';
import '../widgets/grid.dart';
import '../widgets/pay_sponsor_button.dart';
import '../widgets/working_proffessional_header.dart';


class WorkingProffessional1 extends StatefulWidget {
  const WorkingProffessional1({Key? key}) : super(key: key);

  @override
  State<WorkingProffessional1> createState() => _WorkingProffessional1State();
}

class _WorkingProffessional1State extends State<WorkingProffessional1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/elements/backg.png'),
                    fit: BoxFit.cover,
                  ),
                )
            ),
            Positioned(
                top: height*.03,
                child:
                IconButton(
                    onPressed: (){Navigator.pop(context);},
                    icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)
                )),
            Positioned(
              top: height*.09,
              left: width*.07,
              child: WorkingProffessionalHeader(),
            ),
            Positioned(
                left: width*.72,
                top: height*.04,
                child:Image.asset('assets/header/headerimg2.png',scale: .8,)
            ),
            Positioned(
                left: width*.025,
                top: height*.3,
                child: Text("Courses according to experience",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w600),)
            ),
            Positioned(
                left: width*.05,
                top: height*.32,
                width: width*.9,
                height: height*.4,
                // child: Grid(),
                child: GridView.count(
                  //padding: EdgeInsets.all(20),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                  children: [
                    Grid(),
                    Grid(),
                    Grid(),
                    Grid(),
                    Grid(),
                    Grid(),
                  ],
                )
            ),
            Positioned(
                width: width*.85,
                top: height*.685,
                left: width*.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentDetails(page: WP1UI())),
                          );
                        },
                        child: PaySponsorButton(isPay:true)),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sponsor()),
                          );
                        },
                        child: PaySponsorButton(isPay:false)),
                  ],
                )
            ),
            Positioned(
                left: width*.045,
                top: height*.78,
                child: Image.asset('assets/CV/CV.png',scale: .85,)
            ),
            Positioned(
                width: width,
                top: height*.855,
                left: width*.03,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  CreateCVPage()),
                          );
                          },
                      child: CVButton(
                        imgUrl: "assets/CV/CV1.png",
                        title: "Create a new CV",
                        subtitle: "We will go through each section together",
                      ),
                    ),
                    SizedBox(width: width*.05,),
                    CVButton(
                      imgUrl: "assets/CV/CV2.png",
                      title: "Already have a CV ?",
                      subtitle: "We will transfer everything to your new template",
                    ),
                  ],
                )
            ),

            
          ],
        ),
      ),
    );
  }
}
