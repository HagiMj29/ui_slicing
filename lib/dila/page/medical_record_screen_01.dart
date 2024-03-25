import 'package:flutter/material.dart';

import 'medical_record_screen_02.dart';

class MedicalRecordScreen01 extends StatefulWidget {
  const MedicalRecordScreen01({super.key});

  @override
  State<MedicalRecordScreen01> createState() => _MedicalRecordScreen01State();
}

class _MedicalRecordScreen01State extends State<MedicalRecordScreen01> {
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
                          'Medical Records',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                    Center(
                      child: Image.asset(
                        'images/dila/icon/illustration.png',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Add a medical record',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'A detailed health history helps a doctor diagnose\n you better',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return MedicalRecordScreen02();
                            });
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
                        'Add a record',
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
