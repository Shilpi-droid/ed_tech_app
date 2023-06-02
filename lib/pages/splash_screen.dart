
import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding_screen1.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late AnimationController _dropcontroller;
  late AnimationController _colorcontroller;
  late Animation<double> _dropAnimation;
  late Animation<double> _colorAnimation;
  double _dropYOffset = -200.0;
  Color _screenColor = Colors.white;
  bool change=false;

  @override
  void initState() {
    super.initState();

    _dropcontroller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _dropAnimation = Tween<double>(
      begin: -200.0,
      end: 350.0,
    ).animate(CurvedAnimation(
        parent: _dropcontroller,
        curve: Curves.easeInOut,
      ))
      ..addListener(() {
        setState(() {
          _dropYOffset = _dropAnimation.value;
        });
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // First animation completed, start the second animation
          _colorcontroller.forward();
          change=true;
        }
      });

    _colorcontroller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _colorAnimation = Tween<double>(
      begin: 0.0,
      end: 2.0,
    ).animate(_colorcontroller)
        ..addListener(() {
      setState(() {
        _screenColor = Color.lerp(Colors.white, Color(0xff105162), _colorAnimation.value)!;
      });
    });

    _dropcontroller.forward();
    Timer(Duration(seconds: 4), () {
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingScreen1()),
          );
    });
    //

  }

  @override
  void dispose() {
    _colorcontroller.dispose();
    _colorcontroller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final circleSize = size.width * _colorAnimation.value;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Container(
            //   height:size.height,
            //     width:size.width,
            //   child: Image(image: AssetImage('assets/images/background_image.png')),
            // ),
            Center(
              child: CustomPaint(
                painter: CircleSpreadPainter(
                  radius: circleSize,
                ),
                child: Container(
                  width: size.width,
                  height: size.height,
                ),
              ),
            ),
            Center(
                child: change?Image(image: AssetImage('assets/splash/white_skido.png')):Image(image: AssetImage('assets/splash/green_skido.png')),),

            Positioned(
              top: _dropYOffset,
              left: MediaQuery.of(context).size.width / 2 - 25.0,
              child: Icon(
                Icons.circle,
                size: 60.0,
                color: Color(0xff105162),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleSpreadPainter extends CustomPainter {
  final double radius;

  CircleSpreadPainter({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff105162)
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CircleSpreadPainter oldDelegate) {
    return oldDelegate.radius != radius;
  }
}