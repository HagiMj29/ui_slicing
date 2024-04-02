import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'diagonstics_test.dart';

class HelpCenterPage extends StatelessWidget {
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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'I have an issue with...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w100,
                          color: Color.fromRGBO(14, 190, 127, 1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                _buildListItem(context,'Booking a new Appointment',  trailingIcon: Icons.navigate_next),
                _buildListItem(context,'Existing Appointment', trailingIcon: Icons.navigate_next),
                _buildListItem(context,'Online consultations', trailingIcon: Icons.navigate_next),
                _buildListItem(context,'Feedbacks', trailingIcon: Icons.navigate_next),
                _buildListItem(context,'Medicine orders', trailingIcon: Icons.navigate_next),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DiagonsticTestPage()));
                }, child: _buildListItem(context,'Diagnostic Tests', trailingIcon: Icons.navigate_next)),
                _buildListItem(context,'Health plans', trailingIcon: Icons.navigate_next),
                _buildListItem(context,'My account and Practo Drive', trailingIcon: Icons.navigate_next),
                _buildListItem(context,'Have a feature in mind', trailingIcon: Icons.navigate_next),
                _buildListItem(context,'Other issues', trailingIcon: Icons.navigate_next),

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


Widget _buildSectionTitle(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Rubik',
          color: Color.fromRGBO(103, 114, 148, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5.0),
    ],
  );
}

Widget _buildListItem(BuildContext context, String title, {String trailingText = '', IconData? trailingIcon}) {
  return Container(
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0), 
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Rubik',
          color: Color.fromRGBO(103, 114, 148, 1)
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText.isNotEmpty) 
            Text(
              trailingText,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Rubik',
                color: Color.fromRGBO(103, 114, 148, 1)
              ),
            ),
          if (trailingIcon != null && trailingText.isNotEmpty) SizedBox(width: 8),
          if (trailingIcon != null) Icon(trailingIcon),
        ],
      ),
    ),
  );
}

