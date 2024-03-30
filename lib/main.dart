import 'package:flutter/material.dart';
import 'package:ui_slicing/page/find_doctor_page.dart';
import 'package:ui_slicing/page/home_page.dart';
import 'package:ui_slicing/page/live_page.dart';
import 'package:ui_slicing/page/onboarding_screen.dart';
import 'package:ui_slicing/page/second_select_time_doctor_page.dart';
import 'package:ui_slicing/page/select_time_doctor_page.dart';
import 'package:ui_slicing/page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


