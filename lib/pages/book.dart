import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skido/pages/details.dart';
import 'package:skido/ui.dart';
import 'package:skido/widgets/coursecard.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);


  @override
  State<Book> createState() => _BookState();
}


class _BookState extends State<Book> {
  // Course courseInstance = Course();
  // int currentIndex = 0;
  //
  // void handleButtonPress() {
  //   courseInstance.toggleFavourite(currentIndex);
  // }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/elements/backpg.png'),
          // )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white, )),
                //     // SizedBox(width: width*0.6),
                //     // Icon(Icons.search, size: 25, color: Colors.white,),
                //     // Icon(Icons.favorite, size: 25, color: Colors.white,),
                //     // Icon(Icons.shopping_cart, size: 25, color: Colors.white,),
                //     // Icon(Icons.person, size: 25, color: Colors.white,)
                //   ],
                // ),
                // SizedBox(height: 20),
                // Stack(
                //   children: [
                //     Row(
                //       children: [
                //         CardUI(
                //             height: 170,
                //             width: width-120,
                //             child: Center(
                //                 child: Text(
                //                 'Scroll Across to find a\nsuitable language',
                //                   textAlign: TextAlign.center,
                //                   style: GoogleFonts.montserrat(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 20,
                //                   ),
                //                 ),
                //             ),
                //         ),
                //       ],
                //     ),
                //     Align(
                //       alignment: AlignmentDirectional.topEnd,
                //       child: Container(
                //         height: 190,
                //         //alignment: Alignment.center,
                //           child: Image(image: AssetImage('assets/courseimg/people.png'),fit: BoxFit.cover),
                //       ),
                //     ),
                //     // Container(
                //     //   width: 250,
                //     //   height: 250,
                //     //   color: Colors.amberAccent,
                //     // ),
                //     // Positioned( //<-- SEE HERE
                //     //   right: 0,
                //     //   top: 15,
                //     //   child: Container(
                //     //     width: 230,
                //     //     height: 230,
                //     //     color: Colors.deepPurpleAccent,
                //     //   ),
                //     // ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Center(
                //   child: Text(
                //     'Purchase Our Signature\nCoding Classes',
                //     textAlign: TextAlign.center,
                //     style: GoogleFonts.montserrat(
                //       color: Colors.white,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 25,
                //     ),
                //   ),
                // ),
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       onTap: (){
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(builder: (context) => DetailsPage()),
                //         );
                //       },
                //       child: CourseTile(
                //         img: 'assets/courseimg/c1.png',
                //         name: 'Python',
                //         price: '54000',
                //         description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //   ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=0;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c2.png',
                //           name: 'C',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=1;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c3.png',
                //           name: 'C++',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=2;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c4.png',
                //           name: 'Java',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=3;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c5.png',
                //           name: 'JavaScript',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=4;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c6.png',
                //           name: 'CSS',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=5;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                //
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c7.png',
                //           name: 'HTML',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               currentIndex=6;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                //
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c8.png',
                //           name: 'R',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //             currentIndex=7;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                //
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c9.png',
                //           name: 'PHP',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //             setState(() {
                //             currentIndex=8;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),
                //
                // SizedBox(height: 10),
                // Stack(
                //   children :[
                //     GestureDetector(
                //       // onTap: Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => DetailPage(index: index)),
                //       // ),
                //       child: CourseTile(
                //           img: 'assets/courseimg/c10.png',
                //           name: 'SQL',
                //           price: '54000',
                //           description: 'Python is an interpreted, interactive, object-oriented programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. It supports multiple programming paradigms beyond object-oriented programming, such as procedural and functional programming.'
                //       ),
                //     ),
                //     Positioned(
                //         bottom: 0,
                //         right: 20,
                //         child:  GestureDetector(
                //           onTap: (){
                //
                //             setState(() {
                //             currentIndex=9;
                //             });
                //             setState(() {
                //               handleButtonPress();
                //             });
                //           },
                //           child: Icon(
                //             courseInstance.favouriteval(currentIndex)?
                //             Icons.favorite:
                //             Icons.favorite_border,
                //             color: courseInstance.favouriteval(currentIndex)?
                //             Color(0xff5D73C3):Colors.white,
                //           ),
                //         )
                //     ),
                //   ],
                // ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }

}

// class Course {
//   List<Map<String, dynamic>> courseList = [];
//
//   Course() {
//     initializeCourses();
//   }
//
//   void initializeCourses() {
//     for (int i = 0; i < 10; i++) {
//       String courseName = "Course ${i + 1}";
//       bool isFavourite = false;
//       courseList.add({
//         'name': courseName,
//         'isFavourite': isFavourite,
//       });
//     }
//   }
//
//   void toggleFavourite(int index) {
//     if (index >= 0 && index < courseList.length) {
//       courseList[index]['isFavourite'] = !courseList[index]['isFavourite'];
//     }
//   }
//
//   bool favouriteval(int index){
//     return courseList[index]['isFavourite'];
//   }
// }





//Stack(
//                     children: [
//                       CardUI(
//                           height: 150,
//                           width: width-30,
//                           child: Text(
//                             'Scroll Across to find a language'
//                           ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional.topEnd,
//                         child: Container(
//                             //alignment: Alignment.center,
//                             child: Image(image: AssetImage('assets/courseimg/people.png'),)
//                         ),
//                       ),
//                     ],
//                   ),
