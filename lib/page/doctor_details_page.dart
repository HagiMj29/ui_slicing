import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorDetailPage extends StatelessWidget {
  const DoctorDetailPage({super.key});

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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Favorite Doctors",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'images/img_9.png',
                                          scale: 4,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Image.asset(
                                                  'images/img_19.png',
                                                  scale: 1.5,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 70),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        CupertinoIcons
                                                            .money_dollar,
                                                        color: Colors.green,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text("28.00/hr")
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      CupertinoIcons.heart_fill,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.green,
                                child: Text(
                                  "Booking now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 70,
                                width:70,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("100",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),),
                                      Text("Running")],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 70,
                                width:70,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("500",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),),
                                      Text("Ongoing")],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 70,
                                width:70,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("700",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),),
                                      Text("Patient")],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Services", style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("1.", style: TextStyle(
                        color: Colors.green,
                      ),),
                      SizedBox(width: 5,),
                      Text("Patient care should be the number one priority")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("2.", style: TextStyle(
                        color: Colors.green,
                      ),),
                      SizedBox(width: 5,),
                      Text("If you run your practiceyou know how frustrating")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("3.", style: TextStyle(
                        color: Colors.green,
                      ),),
                      SizedBox(width: 5,),
                      Text("That’s why some of appointment reminder system")
                    ],
                  ),
                  
                  Image.asset('images/img_27.png',scale: 2,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
