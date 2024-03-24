import 'package:flutter/material.dart';

class PopularDoctor extends StatelessWidget {
  const PopularDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 200,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/img_17.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dr. Fillegrub Grab',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Medicine Specialist',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'images/img_19.png',
                        scale: 2,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/img_18.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dr. Blessing',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dentist Specialist',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'images/img_19.png',
                        scale: 2,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/img_17.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dr. Fillegrub Grab',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Medicine Specialist',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'images/img_19.png',
                        scale: 2,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/img_18.png',
                        scale: 3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dr. Blessing',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dentist Specialist',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        'images/img_19.png',
                        scale: 2,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
