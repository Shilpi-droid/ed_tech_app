import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PracticePopup extends StatefulWidget {
  const PracticePopup({super.key});

  @override
  State<PracticePopup> createState() => _PracticePopupState();
}

class _PracticePopupState extends State<PracticePopup> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
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
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          // padding: EdgeInsets.all(-1),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_rounded, size: 25, color: Colors.white,),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.25),
                    SizedBox.square(dimension: 104, child: Image.asset('assets/elements/practicepopup.png'),),
                    SizedBox(height: 10),
                    Text(
                      'Try 3 questions without affecting your score',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'In practice mode you can check your answer after each question.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: height*0.3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              primary: Colors.red.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                  side: BorderSide(color: Colors.white)),
                            ),
                            onPressed: () {

                            },
                            child: Text(
                              'Back',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                  offset: Offset(
                                    0,
                                    5,
                                  ),
                                )
                              ]
                          ),
                          child: SizedBox(
                            width: 160,
                            height: 52,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Color(0xff5D73C3),
                                primary: Colors.red.withOpacity(0),
                                shadowColor: Colors.black,
                              ),
                              onPressed: () {  },
                              child: Text(
                                'Start',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
