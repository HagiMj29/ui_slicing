import 'package:flutter/material.dart';

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
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            elevation: 4, // Ketebalan bayangan Card
                            shape: RoundedRectangleBorder(
                              // Bentuk border Card
                              borderRadius: BorderRadius.circular(
                                  15), // Radius border Card
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              // Padding untuk konten Card
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 55,
                                    height: 60,
                                    child: Card(
                                      color: Colors.green,
                                      elevation: 4,
                                      // Warna background Card kecil
                                      child: Center(
                                        child: Text(
                                          '27\nFEB',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                14, // Warna teks Card kecil
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  SizedBox(
                                    width: 55,
                                    height: 22,
                                    child: Card(
                                      color: Color(0x0EBE7F),
                                      elevation: 4,
                                      // Warna background Card kecil
                                      child: Center(
                                        child: Text(
                                          'NEW',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                            12, // Warna teks Card kecil
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  // Jarak antara Card kecil dan teks
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
                                      // Jarak antara teks pertama dan kedua
                                      Text(
                                        'Record for Abdullah mamun',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.green,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      // Jarak antara teks kedua dan ketiga
                                      Text(
                                        '1 prescription',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        color: Color(0x0EBE7F),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'NEW',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.green
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 100),
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
