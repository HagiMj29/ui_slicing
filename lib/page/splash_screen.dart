import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_slicing/page/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
    return SafeArea(
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('images/img.png',fit: BoxFit.cover,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/img_1.png',height: 100,)
                ],
              )
            ],
          ),
        )
    );
  }
}
