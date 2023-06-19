import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/elements/backg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){Navigator.pop(context);},
                            icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white)
                        ),
                      ],
                    ),
                    Text("About Us",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: width-20,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width:35,
                                height: 90,
                                //color: Colors.green,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'Mission',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  width:200,
                                height: 90,
                                //color: Colors.blue,
                                  child: Text(
                                    'We aim for ending all the corporate requirements in just one convenient visit here. All you need to do is to focus on your goals. We share with you our best services to align our efforts by achieving your trust & create a social impact.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                              )
                            ],
                          ),
                          // Column(
                          //   children: [
                          //     Container(
                          //         width:135,
                          //       height: 90,
                          //       color: Colors.yellow,
                          //       child: Image(
                          //         image: AssetImage('assets/AboutUs/aboutus1.png'),
                          //       ),
                          //     )
                          //   ],
                          // )
                          Image(
                            image: AssetImage('assets/AboutUs/aboutus1.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: width-20,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/AboutUs/aboutus2.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                  width:207,
                                  height: 90,
                                  //color: Colors.blue,
                                  child: Text(
                                    'We aim for ending all the corporate requirements in just one convenient visit here. All you need to do is to focus on your goals. We share with you our best services to align our efforts by achieving your trust & create a social impact.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                              )
                            ],
                          ),
                          SizedBox(width: 15),
                          Column(
                            children: [
                              Container(
                                width:35,
                                height: 90,
                                //color: Colors.green,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'Vision',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // Column(
                          //   children: [
                          //     Container(
                          //         width:135,
                          //       height: 90,
                          //       color: Colors.yellow,
                          //       child: Image(
                          //         image: AssetImage('assets/AboutUs/aboutus1.png'),
                          //       ),
                          //     )
                          //   ],
                          // )

                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: width-20,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width:35,
                                height: 90,
                                //color: Colors.green,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'About',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  width:210,
                                  height: 90,
                                  //color: Colors.blue,
                                  child: Text(
                                    'We aim for ending all the corporate requirements in just one convenient visit here. All you need to do is to focus on your goals. We share with you our best services to align our efforts by achieving your trust & create a social impact.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                              )
                            ],
                          ),
                          // Column(
                          //   children: [
                          //     Container(
                          //         width:135,
                          //       height: 90,
                          //       color: Colors.yellow,
                          //       child: Image(
                          //         image: AssetImage('assets/AboutUs/aboutus1.png'),
                          //       ),
                          //     )
                          //   ],
                          // )
                          SizedBox(width: 20),
                          Image(
                            image: AssetImage('assets/AboutUs/aboutus3.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: width-20,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/AboutUs/aboutus4.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                  width:180,
                                  height: 90,
                                  //color: Colors.blue,
                                  child: Text(
                                    'We aim for ending all the corporate requirements in just one convenient visit here. All you need to do is to focus on your goals. We share with you our best services to align our efforts by achieving your trust & create a social impact.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width:21,
                                height: 90,
                                //color: Colors.green,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'Values',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // Column(
                          //   children: [
                          //     Container(
                          //         width:135,
                          //       height: 90,
                          //       color: Colors.yellow,
                          //       child: Image(
                          //         image: AssetImage('assets/AboutUs/aboutus1.png'),
                          //       ),
                          //     )
                          //   ],
                          // )

                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: width-20,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width:35,
                                height: 90,
                                //color: Colors.green,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    'Team',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  width:230,
                                  height: 90,
                                  //color: Colors.blue,
                                  child: Text(
                                    'We aim for ending all the corporate requirements in just one convenient visit here. All you need to do is to focus on your goals. We share with you our best services to align our efforts by achieving your trust & create a social impact.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                              )
                            ],
                          ),
                          // Column(
                          //   children: [
                          //     Container(
                          //         width:135,
                          //       height: 90,
                          //       color: Colors.yellow,
                          //       child: Image(
                          //         image: AssetImage('assets/AboutUs/aboutus1.png'),
                          //       ),
                          //     )
                          //   ],
                          // )
                          SizedBox(width: 16),
                          Image(
                            image: AssetImage('assets/AboutUs/aboutus5.png'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
