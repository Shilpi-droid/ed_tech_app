
import 'package:flutter/material.dart';

import '../widgets/WP1UI.dart';


class SponsorDonePage extends StatelessWidget {
  const SponsorDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
        children: [
          WP1UI(),
          Opacity(
          opacity: 0.9,
          child: ModalBarrier(
          dismissible: false,
          color: Colors.black,
          ),
          ),
          Container(
            width: width,
            height: height,
            child: Center(
              child: Image.asset("assets/elements/doneimg.png"),
            ),
          )
        ]);
  }
}
