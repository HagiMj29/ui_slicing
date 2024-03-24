import 'package:flutter/material.dart';

class DiagonsticTestPage extends StatefulWidget {
  const DiagonsticTestPage({Key? key}) : super(key: key);

  @override
  _DiagonsticTestPageState createState() => _DiagonsticTestPageState();
}

class _DiagonsticTestPageState extends State<DiagonsticTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/fiza/bg.png',
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
                              Navigator.pop(context, DiagonsticTestPage());
                            },
                            child: Image.asset(
                              'images/fiza/back.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Diagnostic Tests',
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
                        'images/fiza/diagonstic.png',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'You haven’t booked any tests yet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Get started with your first health checkup',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
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
                        'Book Now',
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
