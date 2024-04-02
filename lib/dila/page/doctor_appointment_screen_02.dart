import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_slicing/dila/page/sign_up_screen.dart';
import 'package:ui_slicing/dila/page/thank_you_screen.dart';
import 'package:ui_slicing/page/home_page.dart';

class DoctorAppointmentScreen02 extends StatefulWidget {
  const DoctorAppointmentScreen02({Key? key}) : super(key: key);

  @override
  State<DoctorAppointmentScreen02> createState() =>
      _DoctorAppointmentScreen02State();
}

class _DoctorAppointmentScreen02State extends State<DoctorAppointmentScreen02> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/dila/background/bg.png',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.pop(context, DiagonsticTestPage());
                            },
                            child: Image.asset(
                              'images/dila/icon/back.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Appointment',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          TableCalendar(
                            headerStyle: HeaderStyle(
                              formatButtonVisible: false,
                              headerMargin: EdgeInsets.only(bottom: 10),
                            ),
                            focusedDay: today,
                            firstDay: DateTime.utc(2000, 01, 01),
                            lastDay: DateTime.utc(2030, 01, 01),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Container(
                            height: 4,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 223, 221, 221),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 5),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Available Time',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '10:00\nAM',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '12:00\nAM',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '02:00\nPM',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '03:00\nPM',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '04:00\nPM',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Reminder Me Before',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '30\nMinutes',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '40\nMinutes',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '25\nMinutes',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '10\nMinutes',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      children: [
                                                        Card(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50), // Atur radius sesuai keinginan untuk membuat card berbentuk bulat
                                                          ),
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            child: Center(
                                                              child: Text(
                                                                '35\nMinutes',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .green,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>ThankyouScreen()));
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 10,),
                                          Image.asset(
                                            'images/dila/icon/thank_you.png',
                                            width: 156,
                                            height: 156,
                                          ),
                                          SizedBox(height: 16),
                                          Column(
                                            children: [
                                              Text(
                                                'Thank You !',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 38,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                'Your Appointment Successful',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 20,),
                                              Text(
                                                'You booked an appointment with Dr.\nPediatrician Purpieson on February 21,\nat 02:00 PM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(height: 20,),
                                              MaterialButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                                },
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 175,
                                                  vertical: 15,
                                                ),
                                                color: Colors.green,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                                child: Text(
                                                  'Done',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w200,
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        Center(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Tutup dialog saat tombol ditekan
                                            },
                                            child: Text(
                                              "Edit your appointment",
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )

                                      ],
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 15,
                                ),
                                backgroundColor:
                                    Color.fromRGBO(14, 190, 127, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
