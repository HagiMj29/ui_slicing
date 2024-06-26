import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_slicing/page/select_time_doctor_page.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Shrutti Kedia",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Tooth Dentist",
                              style: TextStyle(color: Colors.green),
                            ),
                            Text("7 Years experience"),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.circle,size: 15,
                                      color: Colors.green,
                                    ),
                                    Text("74%")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,size: 15,
                                    ),
                                    Text("78 Patient Stories")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Next Available",style: TextStyle(color: Colors.green),),
                            Row(
                              children: [
                                Text("12.00", style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("AM Tomorrow"),
                              ],
                            )
                          ],
                        ),
                        MaterialButton(
                          color: Colors.green,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectTimeDoctorPage()));
                        },
                          child: Text("Book Now"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Shrutti Kedia",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Tooth Dentist",
                              style: TextStyle(color: Colors.green),
                            ),
                            Text("7 Years experience"),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.circle,size: 15,
                                      color: Colors.green,
                                    ),
                                    Text("74%")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,size: 15,
                                    ),
                                    Text("78 Patient Stories")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Next Available",style: TextStyle(color: Colors.green),),
                            Row(
                              children: [
                                Text("12.00", style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("AM Tomorrow"),
                              ],
                            )
                          ],
                        ),
                        MaterialButton(
                          color: Colors.green,
                          onPressed: (){
                          },
                          child: Text("Book Now"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Shrutti Kedia",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Tooth Dentist",
                              style: TextStyle(color: Colors.green),
                            ),
                            Text("7 Years experience"),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.circle,size: 15,
                                      color: Colors.green,
                                    ),
                                    Text("74%")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,size: 15,
                                    ),
                                    Text("78 Patient Stories")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Next Available",style: TextStyle(color: Colors.green),),
                            Row(
                              children: [
                                Text("12.00", style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("AM Tomorrow"),
                              ],
                            )
                          ],
                        ),
                        MaterialButton(
                          color: Colors.green,
                          onPressed: (){
                          },
                          child: Text("Book Now"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
