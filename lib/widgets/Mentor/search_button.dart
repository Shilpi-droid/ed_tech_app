
import 'dart:ui';

import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      height: height*.04,
      width: width*.55,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white.withOpacity(0.18)),
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(0.08),
                      ]
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 3,
                  sigmaX: 3,
                ),
                child:TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search,color: Colors.white,),
                    hintText: "Search your mentor",
                    hintStyle: TextStyle(color: Colors.white),

                    contentPadding: EdgeInsets.symmetric(vertical:2,horizontal: 10),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent), // Set transparent color or remove it completely
                    ),
                  ),
                  maxLines: 1,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              )
            ],
          )

      ),
    );
  }
}
