import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/widgets/categories.dart';

class InterviewRole extends StatefulWidget {
  const InterviewRole({super.key});

  @override
  State<InterviewRole> createState() => _InterviewRoleState();
}

class _InterviewRoleState extends State<InterviewRole> {
  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,)
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("10+ interview questions for\nData Scientists",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      //fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 215,
                            child: Text("\u2022 What are some of the steps for data wrangling and data cleaning before applying machine learning algorithms?",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 215,
                            child: Text("There are many steps that can be taken when data wrangling and data cleaning. Some of the most common steps are listed below:",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                //fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                      Container(
                        width: 125,
                          height: 280,
                          // color: Colors.blue,
                          child: Image(image: AssetImage('assets/InterviewRole/interviewrole.png'), fit: BoxFit.fill,)
                      ),
                    ],
                  ),
                  Container(
                    width: width-30,
                    child: Text("\u2022 Data profiling: Almost everyone starts off by getting an understanding of their dataset. More specifically, you can look at the shape of the dataset with .shape and a description of your numerical variables with .describe().",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: width-30,
                    child: Text("\u2022 Data visualizations: Sometimes, it’s useful tovisualize your data with histograms, box plots, and scatter plots to better understand the relationships between variables and also to identify potential outliers.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: width-30,
                    child: Text("\u2022 Syntax error: This includes making sure there’s no white space, making sure letter casing is consistent, and checking for typos. You can check for typos by using .unique() or by using bar graphs.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 270,
                    width: width-30,
                    child: Stack(
                      children: [
                        Container(
                          height: 270,
                          width: width-30,
                          child: Column(
                            children: [
                              SizedBox(height: 34),
                              Row(
                                children: [
                                  SizedBox(width: 45),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        height: 173,
                                        width: 302,
                                        decoration: BoxDecoration(
                                          //color: Colors.white.withOpacity(0.3),
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.white.withOpacity(0.4),
                                              Colors.white.withOpacity(0.1),
                                            ],
                                            begin:Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.2,0.8],
                                          ),
                                          borderRadius: BorderRadius.circular(8.0),
                                          border: Border.all(color:Colors.white, width: 0.4),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "For more detailed Questions",
                                                  textAlign: TextAlign.right,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 7),
                                                Text(
                                                  'Connect with our Mentors',
                                                  textAlign: TextAlign.right,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 45),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Categories(text: 'Chat'),
                                                    SizedBox(width: 10),
                                                    Categories(text: 'Call'),
                                                  ],
                                                )
                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Container(
                            width: 127,
                            height: 210,
                            child: Image(
                              image: AssetImage('assets/InterviewRole/interviewrole2.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//What are some of the steps
// for data wrangling and
// data cleaning before applying
// machine learning algorithms?
//
// There are many steps that can
// be taken when data wrangling
// and data cleaning. Some of the
// most common steps are listed
// below:
//
// Data profiling: Almost everyone starts off by
// getting an understanding of their dataset. More
// specifically, you can look at the shape of the
// dataset with .shape and a description of your
// numerical variables with .describe().
//
// Data visualizations: Sometimes, it’s useful to
// visualize your data with histograms, box plots,
// and scatter plots to better understand the
// relationships between variables and also to
// identify potential outliers.
//
// Syntax error: This includes making sure
// there’s no white space, making sure letter casing
// is consistent, and checking for typos. You can
// check for typos by using .unique() or by using
// bar graphs.
//
// Standardization or normalization: Depending
// on the dataset your working with and the
// machine learning method you decide to use, it
// may be useful to standardize or normalize your
// data so that different scales of different variables
// don’t negatively impact the performance of your
// model.
//
//
//
//
// How will you explain linear regression to a
// non-tech person?
//
// Linear Regression is a statistical technique of
// measuring the linear relationship between the
// two variables. By linear relationship, we mean
// that an increase in a variable would lead to
// increase in the other variable and a decrease in
// one variable would lead to attenuation in the
// second variable as well. Based on this linear
// relationship, we establish a model that predicts
// the future outcomes based on an increase in
// one variable.
//
//
//
//
// How will you handle missing values in data?
//
// There are several ways to handle missing values
// in the given data-
// Dropping the values
// Deleting the observation (not always
// recommended).
// Replacing value with the mean, median and
// mode of the observation.
// Predicting value with regression
// Finding appropriate value with clustering
//
//
//
//
// How are KNN and K-means clustering different?
//
// Firstly, KNN is a supervised learning algorithm.
// In order to train this algorithm, we require labeled
// data. K-means is an unsupervised learning
// algorithm that looks for patterns that are intrinsic
// to the data. The K in KNN is the number of nearest
// data points. On the contrary, the K in K-means
// specify the number of centroids.