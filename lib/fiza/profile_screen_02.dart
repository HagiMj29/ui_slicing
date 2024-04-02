import 'package:flutter/material.dart';

class ProfilePage02 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height ,
              decoration: BoxDecoration(
              color: Color.fromRGBO(85, 99, 134, 1)

              ),
            ),
            Positioned(
              top: 30,
              left: 5,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(0, 40),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 16, 
                          color: Color.fromRGBO(103, 114, 148, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 0,
              right: 0,
              height: screenSize.height,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is your name?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Abdullah Mamun',
                      hintStyle: 
                        TextStyle(
                          color: Colors.white, 
                          fontSize: 18, 
                          fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder( 
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold, 
                      fontSize: 22),
                  ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
