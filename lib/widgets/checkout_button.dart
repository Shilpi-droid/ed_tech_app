
import 'dart:ui';

import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
        children: [
          //black container
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: width*.85,
              height: height*.11,
              color: Colors.transparent,
              child: Stack(

                children: [

                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.black.withOpacity(0.18)),
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black54.withOpacity(.5),
                            Colors.black54.withOpacity(0.08),
                          ]
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 3,
                      sigmaX: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //glass container
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: width*.65,
              height: height*.11,
              color: Colors.transparent,
              child: Stack(

                children: [

                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.white.withOpacity(0.28)),
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(.45),
                            Colors.white.withOpacity(0.01),
                          ]
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 3,
                      sigmaX: 3,
                    ),

                  ),
                  Positioned(
                    top: height*.037,
                    left: 70,
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
    );
  }
}
