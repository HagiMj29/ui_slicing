import 'package:flutter/material.dart';
import 'package:ui_slicing/fiza/help_center.dart';

class MedicineOrdersPage extends StatelessWidget {
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
          _buildHeader(),
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                    // Add your search functionality here
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigasi ke halaman lain
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HelpCenterPage()),
                          );
                        },
                        child: Container(
                        height: 150, // Atur tinggi sesuai kebutuhan Anda
                        child: Card(
                          margin: EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fiza/guide.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Guide to medicine order',
                                textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Rubik',
                                      color: Color.fromRGBO(103, 114, 148, 1),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150, // Atur tinggi sesuai kebutuhan Anda
                        child: Card(
                          margin: EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fiza/prescription.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Prescription related issues',
                                textAlign: TextAlign.center,
                                    style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Rubik',
                                    color: Color.fromRGBO(103, 114, 148, 1),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150, // Atur tinggi sesuai kebutuhan Anda
                        child: Card(
                          margin: EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fiza/status.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Order status',
                                textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Rubik',
                                    color: Color.fromRGBO(103, 114, 148, 1),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        child: Card(
                          margin: EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fiza/delivery.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Order delivery',
                                textAlign: TextAlign.center,
                                    style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Rubik',
                                    color: Color.fromRGBO(103, 114, 148, 1),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150, // Atur tinggi sesuai kebutuhan Anda
                        child: Card(
                          margin: EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fiza/payment.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Payments & Refunds',
                                textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Rubik',
                                    color: Color.fromRGBO(103, 114, 148, 1),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        child: Card(
                          margin: EdgeInsets.all(7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fiza/returns.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Order returns',
                                textAlign: TextAlign.center,
                                    style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Rubik',
                                    color: Color.fromRGBO(103, 114, 148, 1),
                                  ),
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
          ),
        ],
      ),
    );
  }
}

Widget _buildHeader() {
  return Positioned(
    top: 20,
    left: 20,
    right: 20, // Menyesuaikan posisi kanan
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: GestureDetector(
            child: Image.asset(
              'images/fiza/back.png',
              width: 20,
              height: 20,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Help Center',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik',
          ),
        ),
      ],
    ),
  );
}
