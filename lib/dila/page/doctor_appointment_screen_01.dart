import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctor_appointment_screen_02.dart';

class DoctorAppointmentScreen01 extends StatefulWidget {
  const DoctorAppointmentScreen01({super.key});

  @override
  State<DoctorAppointmentScreen01> createState() => _DoctorAppointmentScreen01State();
}

class _DoctorAppointmentScreen01State extends State<DoctorAppointmentScreen01> {
  bool isLoved = false;
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

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
                          'Appointment',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    buildDoctorCard(),
                  ],
                ),
              ),
            ),
          ),
          // layer ketiga
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              // height: 60, // Sesuaikan tinggi container sesuai kebutuhan
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight:  Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Tambahkan aksi yang ingin dilakukan saat ikon diklik di sini
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Icon(Icons.home, color: Colors.green,),],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Tambahkan aksi yang ingin dilakukan saat ikon diklik di sini
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Icon(Icons.favorite, color: Colors.green,),],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Tambahkan aksi yang ingin dilakukan saat ikon diklik di sini
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Icon(Icons.book, color: Colors.green,), ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Tambahkan aksi yang ingin dilakukan saat ikon diklik di sini
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Icon(Icons.chat, color: Colors.green,), ],
                      ),
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

  Widget buildDoctorCard() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isLoved = !isLoved;
            });
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/dila/icon/appointment1.png',
                        width: 92, // Sesuaikan lebar gambar sesuai kebutuhan
                        height: 87, // Sesuaikan tinggi gambar sesuai kebutuhan
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Pediatrician',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Specialist Cardiologist',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Image.asset('images/dila/icon/star.png', scale: 1.5),
                                SizedBox(width: 150),
                                Text("28.00/hr", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isLoved = !isLoved;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // border: Border.all(
                            //   color: Colors.grey,
                            //   width: 1,
                            // ),
                          ),
                          child: Icon(
                            isLoved ? Icons.favorite : Icons.favorite_border,
                            color: isLoved ? Colors.red : Colors.grey,
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Appointment For',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Patient Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Contact Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Who is this patient?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    height: 125,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Add ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/dila/icon/record.png',
                        width: 100,
                        height: 125,
                      ),
                      SizedBox(height: 5,),
                      Text(
                          'My Self',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Image.asset(
                        'images/dila/icon/child.png',
                        width: 100,
                        height: 125,
                      ),
                      SizedBox(height: 5,),
                      Text('My Child',
                      style: TextStyle(
                        fontSize: 12,
                      )),
                    ],
                  ),
                  SizedBox(height: 7,),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorAppointmentScreen02()));
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
                  'Next',
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

      ],
    );
  }

}


