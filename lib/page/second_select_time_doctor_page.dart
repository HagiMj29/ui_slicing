import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/list_time.dart';
import '../widgets/second_list_Time.dart';

class SecondSelectTimeDoctorPage extends StatelessWidget {
  const SecondSelectTimeDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Image.asset(
              'images/img_26.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(CupertinoIcons.back),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Select Time",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'images/img_23.png',
                                      scale: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dr.Shrutti Kedia",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Upasana DentaL Clinic, Salt Care"),
                                        Image.asset(
                                          'images/img_19.png',
                                          scale: 2,
                                        )
                                      ],
                                    ),
                                    Icon(
                                      CupertinoIcons.heart_fill,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListTime(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  "Today, 23 Feb",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Afternoon 7 slots",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 2.0,
                        ),
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          // Waktu dimulai dari pukul 1 siang hingga 7 malam
                          int hour = 1 + index ~/ 2; // Pembagian dengan 2 untuk interval 30 menit
                          int minute = (index % 2) * 30; // Sisa pembagian 2 untuk menentukan 0 atau 30 menit
                          String time = '$hour:${minute == 0 ? '00' : minute} ${hour < 12 ? "AM" : "PM"}';
                          if(index == 2){
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.green
                              ),
                              padding: EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  time,
                                  style: TextStyle(fontSize: 16,color: Colors.white),
                                ),
                              ),
                            );
                          }
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white
                            ),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                time,
                                style: TextStyle(fontSize: 16,color: Colors.green),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Evening 5 slots",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 2.0,
                        ),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          // Waktu dimulai dari pukul 1 siang hingga 7 malam
                          int hour = 5 + index ~/ 2; // Pembagian dengan 2 untuk interval 30 menit
                          int minute = (index % 2) * 30; // Sisa pembagian 2 untuk menentukan 0 atau 30 menit
                          String time = '$hour:${minute == 0 ? '00' : minute} ${hour < 12 ? "AM" : "PM"}';
                          if(index == 1){
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.green
                              ),
                              padding: EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  time,
                                  style: TextStyle(fontSize: 16,color: Colors.white),
                                ),
                              ),
                            );
                          }
                          return Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green),
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white
                            ),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                time,
                                style: TextStyle(fontSize: 16,color: Colors.green),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
