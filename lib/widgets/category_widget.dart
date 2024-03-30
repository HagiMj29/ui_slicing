import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryDoctor extends StatelessWidget {
  const CategoryDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                          'images/img_9.png',
                          scale: 4,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Pediatrician",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Specialist Cardiologist",
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/img_19.png', scale: 1.5,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text("2.4",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("(2475 views)")
                                    ],
                                  ),
                                )
                              ],
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
                          'images/img_17.png',
                          scale: 4,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Mistry Brick",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Specialist Dentist",
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/img_19.png', scale: 1.5,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text("2.4",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("(2475 views)")
                                    ],
                                  ),
                                )
                              ],
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
                                "Specialist Cancer",
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/img_19.png', scale: 1.5,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text("2.4",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("(2475 views)")
                                    ],
                                  ),
                                )
                              ],
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
        ],
      ),
    );
  }
}
