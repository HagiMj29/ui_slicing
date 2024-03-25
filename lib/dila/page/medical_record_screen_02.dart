import 'package:flutter/material.dart';

class MedicalRecordScreen02 extends StatefulWidget {
  // const MedicalRecordScreen02({super.key});

  @override
  State<MedicalRecordScreen02> createState() => _MedicalRecordScreen02State();
}

class _MedicalRecordScreen02State extends State<MedicalRecordScreen02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 221, 221),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              // Navigasi ketika teks "Add record" diklik
            },
            child: Text(
              'Add a record',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                // decoration: TextDecoration.underline,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset(
                'images/dila/icon/camera.png',
                width: 15,
                height: 15,
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  // Navigasi ketika teks "Camera" diklik
                },
                child: Text(
                  'Take a photo',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Image.asset(
                'images/dila/icon/gallery.png',
                width: 15,
                height: 15,
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  // Navigasi ketika teks "Camera" diklik
                },
                child: Text(
                  'Upload from gallery',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Image.asset(
                'images/dila/icon/files.png',
                width: 15,
                height: 15,
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  // Navigasi ketika teks "Camera" diklik
                },
                child: Text(
                  'Upload files',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
