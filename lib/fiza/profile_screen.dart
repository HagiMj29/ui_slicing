import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  
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
                        color: Colors.transparent,
                        elevation: 0,
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
                                  labelText: 'Location',
                                  hintText: 'Enter your location',
                                  prefixIcon: Icon(Icons.location_on),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
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
