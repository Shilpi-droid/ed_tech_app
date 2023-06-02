import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/elements/backg.png')
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back button
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 10.0),
                  // 'Check Out' text
                  Center(
                    child: Text(
                      'Check Out',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // '2 courses selected' text
                  Center(
                    child: Text(
                      '2 courses selected',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Row with image, text, stars, price, and buttons
                  Row(
                    children: [
                      Center(
                        child: Row(
                          children: [
                            // Image
                            Image.asset(
                              'assets/courseimg/c1.png',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10.0),
                            // Text and other widgets
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Title'),  // Replace with your text
                                Text('Subtitle'),  // Replace with your text
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Icon(Icons.star, color: Colors.yellow),
                                    Icon(Icons.star, color: Colors.yellow),
                                    Icon(Icons.star, color: Colors.yellow),
                                    Icon(Icons.star, color: Colors.grey),
                                  ],
                                ),
                                Text('Price'),  // Replace with your text
                                SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add to cart button pressed
                                      },
                                      child: Text('Add to Cart'),
                                    ),
                                    SizedBox(width: 10.0),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Buy now button pressed
                                      },
                                      child: Text('Buy Now'),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(Icons.favorite),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  // 'About the course' text
                  Text(
                    'About the course',
                    style: TextStyle(
                      fontSize: 18.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Description text
                  Text(
                    'Course description',  // Replace with your text
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // 'User Review' text
                  Text(
                    'User Review',
                    style: TextStyle(
                      fontSize: 18.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Review text
                  Text(
                    'User review description',  // Replace with your text
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Curved sliding button
                  ElevatedButton(
                    onPressed: () {
                      // Curved sliding button pressed
                    },
                    child: Text('Sliding Button'),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
