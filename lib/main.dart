import 'package:flutter/material.dart';
import 'package:ui_slicing/dila/page/medical_record_screen_02.dart';
import 'package:ui_slicing/dila/page/menu_screen.dart';

import 'dila/page/add_records_screen.dart';
import 'dila/page/all_record_screen.dart';
import 'dila/page/doctor_appointment_screen_01.dart';
import 'dila/page/doctor_appointment_screen_02.dart';
import 'dila/page/medical_record_screen_01.dart';
import 'dila/page/medicine_order_screen.dart';
import 'dila/page/my_doctors_screen.dart';
import 'dila/page/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:DoctorAppointmentScreen01(),
      debugShowCheckedModeBanner: false,
    );
  }
}
