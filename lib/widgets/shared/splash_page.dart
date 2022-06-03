import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handova/widgets/shared/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => OnBoardingPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F0F0F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
              scale: 0.6,
              child: Image.asset(
                  'images/WhatsApp Image 2022-01-04 at 7.25 1.png')),
        Transform.scale(
          scale: 0.6,
            child: Image.asset('images/lf20_JO4FIR.json].png'))
        ],
      ),
    );
  }
}
