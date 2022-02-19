import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cross_radio/utils/dimensions.dart';

import 'onboard/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _navigateScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(
        "assets/crossLogo.png",
        width: Dimensions.widthSize * 9,
        height: Dimensions.heightSize * 6.5,
        alignment: Alignment.center,
        fit: BoxFit.fill,
      )),
    );
  }

  void _navigateScreen() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => const OnboardScreen()), (route) => false),
    );
  }
}
