import 'package:flutter/material.dart';
import 'package:ui_slicing/fiza/patient_details_01.dart';

class PrivacyPolicyPage extends StatelessWidget {
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
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'images/fiza/back.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Doctor Hunt Apps Privacy Policy',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik',
                          color: Color.fromRGBO(103, 114, 148, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'There are many variations of passages of Lorem Ipsum available,but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Rubik',
                          height: 2,
                          color: Color.fromRGBO(103, 114, 148, 1),
                        ),
                      ),
                      SizedBox(height: 20),
                      BulletText('The standard chunk of lorem Ipsum used since 1500s is reproduced below for those interested.'),
                      BulletText('Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum. The point of using.'),
                      BulletText('Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.'),
                      BulletText('The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.'),
                      Text(
                        'It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Rubik',
                          height: 2,
                          color: Color.fromRGBO(103, 114, 148, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;

  BulletText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 20,
            child: Icon(
              Icons.fiber_manual_record,
              size: 12,
              color: Color.fromRGBO(14, 190, 127, 1),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Rubik',
                height: 2,
                color: Color.fromRGBO(103, 114, 148, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
