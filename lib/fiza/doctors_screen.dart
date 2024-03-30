import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatelessWidget {
  final List<String> specialties = [
    'All',
    'Dentist',
    'Cardiology',
    'Cancer',
    'Cardiology',
    'Dentist',
    'Cancer'
  ];

  final List<Map<String, dynamic>> doctorsData = [
    {
      'imagePath': 'images/fiza/doctor_1.png',
      'name': 'Dr. Pediatrician',
      'specialization': 'Upasana Dental Clinic, Salt Care',
      'rating': '2.8 ( 2821 views )',
    },
    {
      'imagePath': 'images/fiza/doctor_4.png',
      'name': 'Dr. Johan smith',
      'specialization': 'Specialist cardiologist',
      'rating': '2.8 ( 2821 views )',
    },
    {
      'imagePath': 'images/fiza/doctor_2.png',
      'name': 'Dr. Mistry Brick',
      'specialization': 'Specialist Dentist',
      'rating': '2.8 ( 2821 views )',
    },
    {
      'imagePath': 'images/fiza/doctor_3.png',
      'name': 'Dr. Ether Wall',
      'specialization': 'Specialist Cancer',
      'rating': '2.8 ( 2821 views )',
    },
  ];

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
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: specialties.map((specialty) {
                      return _buildSpecialtyButton(specialty);
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: doctorsData.map((doctor) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _buildDoctorCard(doctor),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: const Color.fromRGBO(76, 175, 80, 1),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(103, 114, 148, 1),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.book,
                    color: Color.fromRGBO(103, 114, 148, 1),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.chat,
                    color: Color.fromRGBO(103, 114, 148, 1),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Positioned(
      top: 20,
      left: 20,
      right: 20,
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
            'Doctors',
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

  Widget _buildSpecialtyButton(String specialty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: specialty == 'All'
                ? Color.fromRGBO(14, 190, 127, 1)
                : Color.fromRGBO(14, 190, 127, 0.08),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            specialty,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Rubik',
              color: specialty == 'All'
                  ? Color.fromRGBO(249, 250, 251, 1)
                  : Color.fromRGBO(14, 190, 127, 1),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildDoctorCard(Map<String, dynamic> doctorData) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            doctorData['imagePath'],
            height: 100,
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                doctorData['name'],
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(doctorData['specialization']),
              SizedBox(height: 10),
              Image.asset(
                'images/fiza/star.png',
                scale: 1,
              )
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    doctorData['rating'],
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Rubik',
                      color: Color.fromRGBO(103, 114, 148, 1),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
