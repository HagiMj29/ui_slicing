import 'package:flutter/material.dart';
import 'package:ui_slicing/dila/page/medicine_order_screen.dart';

import 'medical_record_screen_01.dart';

class AllRecordScreen extends StatefulWidget {
  const AllRecordScreen({super.key});

  @override
  State<AllRecordScreen> createState() => _AllRecordScreenState();
}

class _AllRecordScreenState extends State<AllRecordScreen> {
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
                              // Navigator.pop(context, MedicineOrderScreen());
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
                          'All Records',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                          // Widget Align untuk menempatkan gambar di ujung kanan
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Image.asset(
                                              'images/dila/icon/titik_tiga.png',
                                              width: 4,
                                              height: 20,
                                            ),
                                          ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 55,
                                            height: 60,
                                            child: Card(
                                              color: Colors.green,
                                              elevation: 4,
                                              child: Center(
                                                child: Text(
                                                  '27\nFEB',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Record Added by You',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                'Record for Abdullah mamun',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                '1 prescription',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 55,
                                            height: 30,
                                            child: Card(
                                              color: Color(0xFF0EBE7F1A),
                                              elevation: 4,
                                              child: Center(
                                                child: Text(
                                                  'NEW',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      // Widget Align untuk menempatkan gambar di ujung kanan
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          'images/dila/icon/titik_tiga.png',
                                          width: 4,
                                          height: 20,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 55,
                                            height: 60,
                                            child: Card(
                                              color: Colors.green,
                                              elevation: 4,
                                              child: Center(
                                                child: Text(
                                                  '28\nFEB',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Record Added by You',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                'Record for Abdullah shuvo',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                '1 prescription',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 55,
                                            height: 30,
                                            child: Card(
                                              color: Color(0xFF0EBE7F1A),
                                              elevation: 4,
                                              child: Center(
                                                child: Text(
                                                  'NEW',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Stack(
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Expanded(
                    //           child: Card(
                    //             elevation: 4,
                    //             shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(15),
                    //             ),
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(16.0),
                    //               child: Column(
                    //                 crossAxisAlignment:
                    //                 CrossAxisAlignment.start,
                    //                 children: [
                    //                   // Widget Align untuk menempatkan gambar di ujung kanan
                    //                   Align(
                    //                     alignment: Alignment.centerRight,
                    //                     child: Image.asset(
                    //                       'images/dila/icon/titik_tiga.png',
                    //                       width: 4,
                    //                       height: 20,
                    //                     ),
                    //                   ),
                    //                   SizedBox(height: 5,),
                    //                   Row(
                    //                     children: [
                    //                       SizedBox(
                    //                         width: 55,
                    //                         height: 60,
                    //                         child: Card(
                    //                           color: Colors.green,
                    //                           elevation: 4,
                    //                           child: Center(
                    //                             child: Text(
                    //                               '01\nMAR',
                    //                               style: TextStyle(
                    //                                 color: Colors.white,
                    //                                 fontSize: 14,
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       SizedBox(width: 8),
                    //                       Column(
                    //                         crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                         children: [
                    //                           Text(
                    //                             'Record Added by You',
                    //                             style: TextStyle(
                    //                               fontSize: 14,
                    //                               fontWeight: FontWeight.bold,
                    //                             ),
                    //                           ),
                    //                           SizedBox(height: 4),
                    //                           Text(
                    //                             'Record for Shuruti kedis',
                    //                             style: TextStyle(
                    //                               fontSize: 12,
                    //                               color: Colors.green,
                    //                             ),
                    //                           ),
                    //                           SizedBox(height: 4),
                    //                           Text(
                    //                             '1 prescription',
                    //                             style: TextStyle(
                    //                               fontSize: 12,
                    //                               color: Colors.grey,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   SizedBox(height: 5),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                     MainAxisAlignment.start,
                    //                     children: [
                    //                       SizedBox(
                    //                         width: 55,
                    //                         height: 30,
                    //                         child: Card(
                    //                           color: Color(0xFF0EBE7F1A),
                    //                           elevation: 4,
                    //                           child: Center(
                    //                             child: Text(
                    //                               'NEW',
                    //                               style: TextStyle(
                    //                                   color: Colors.green,
                    //                                   fontSize: 12,
                    //                                   fontWeight: FontWeight.bold
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 100),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalRecordScreen01()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                        backgroundColor: Color.fromRGBO(14, 190, 127, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Add a records',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
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
