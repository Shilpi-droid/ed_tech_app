import 'package:flutter/material.dart';

class Webinar extends StatefulWidget {
  const Webinar({Key? key}) : super(key: key);

  @override
  State<Webinar> createState() => _WebinarState();
}

class _WebinarState extends State<Webinar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pinkAccent,
    );
  }
}
