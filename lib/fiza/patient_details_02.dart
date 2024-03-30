import 'package:flutter/material.dart';

class PatientDetailsPage_02 extends StatefulWidget {
  @override
  _PatientDetailsPage_02State createState() => _PatientDetailsPage_02State();
}

class _PatientDetailsPage_02State extends State<PatientDetailsPage_02> {
  String selectedOption= '';
  int? selectedDay;
  int? selectedMonth;
  int? selectedYear;
  
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 450,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Patient Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                  color: Color.fromRGBO(103, 114, 148, 1)
                                ),
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.2),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(103, 114, 148, 1)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: 'Ilfiza Mutia Rahmi',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(103, 114, 148, 1)
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Age',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                  color: Color.fromRGBO(103, 114, 148, 1)
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  DropdownButton<int>(
                                    value: selectedDay,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedDay = value!;
                                      });
                                    },
                                      underline: Container(), // Hilangkan garis bawah bawaan
                                      icon: Icon(Icons.arrow_drop_down), // Tambahkan icon dropdown
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color.fromRGBO(103, 114, 148, 1),
                                        decoration: TextDecoration.none, // Hapus dekorasi teks
                                      ),
                                      selectedItemBuilder: (BuildContext context) {
                                        return List.generate(31, (index) {
                                          return Center(
                                            child: Text(
                                              '${selectedDay ?? 'Day'}',
                                              style: TextStyle(
                                                color: Color.fromRGBO(103, 114, 148, 1),
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          );
                                        });
                                    },
                                    items: [
                                      DropdownMenuItem<int>(
                                        value: null,
                                        child: Text('Day'), // Default text
                                      ),
                                      ...List.generate(
                                        31,
                                        (index) => DropdownMenuItem<int>(
                                          value: index + 1,
                                          child: Text('${index + 1}'),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 16), 
                                  DropdownButton<int>(
                                    value: selectedMonth,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedMonth = value!;
                                      });
                                    },
                                    underline: Container(),
                                    items: [
                                      DropdownMenuItem<int>(
                                        value: null,
                                        child: Text('Month',
                                          style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                        ),
                                        ),
                                      ),
                                      ...List.generate(
                                        12,
                                        (index) => DropdownMenuItem<int>(
                                          value: index + 1,
                                          child: Text('${index + 1}'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16),
                                  DropdownButton<int>(
                                    value: selectedYear,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedYear = value!;
                                      });
                                    },
                                    underline: Container(), // Hilangkan garis bawah bawaan
                                    items: [
                                      DropdownMenuItem<int>(
                                        value: null,
                                        child: Text('Year',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Rubik',
                                            color: Color.fromRGBO(103, 114, 148, 1)
                                          ),
                                        ),
                                      ),
                                      ...List.generate(
                                        50,
                                        (index) => DropdownMenuItem<int>(
                                          value: DateTime.now().year - 49 + index,
                                          child: Text('${DateTime.now().year - 49 + index}'),
                                        ),
                                      ),
                                    ]
                                  ),
                                ],
                              ),

                              SizedBox(height: 20),
                              Text(
                                'Gender',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                  color: Color.fromARGB(255, 103, 114, 148)
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Radio<String>(
                                        value: 'Male',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                      Text('Male',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 25),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        value: 'Female',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                      Text('Female',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 25),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        value: 'Other',
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                      Text('Other',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Mobile Number',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                  color: Color.fromRGBO(103, 114, 148, 1)
                                ),
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.2),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(103, 114, 148, 1)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: '+628930389000',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(103, 114, 148, 1)
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                  color: Color.fromRGBO(103, 114, 148, 1)
                                ),
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.2),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(103, 114, 148, 1)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: 'itsmail@gmail.com',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(103, 114, 148, 1)
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
                SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
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
                        'Continue',
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
            'Details Patient',
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
}
