
import 'package:flutter/material.dart';

class EnlargedImage extends StatelessWidget {
  const EnlargedImage({Key? key,required this.path}) : super(key: key);

  final String path;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Material(
      child: Stack(
        children:[
          Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(path),fit: BoxFit.cover)
          ),
        ),
          Positioned(
              left:width*.01,
              top: height*.02,
              child:IconButton(
                onPressed: (){Navigator.pop(context);},
                icon: Icon(Icons.close,color: Colors.white,size: 30,),
              )
          ),
        ]
      ),
    );
  }
}
