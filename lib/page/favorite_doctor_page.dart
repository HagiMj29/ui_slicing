import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_slicing/widgets/home_doctor_feature.dart';

class FavoriteDoctorPage extends StatelessWidget {
  const FavoriteDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Image.asset('images/img_26.png', fit: BoxFit.cover, height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(CupertinoIcons.back),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Favorite Doctors",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Dentist",
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                            ),
                            // Icon smile di sebelah kiri
                            suffixIcon: Icon(
                              CupertinoIcons.xmark,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      GridView.count(
                        shrinkWrap: true,
                          crossAxisCount: 2,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 190, top: 10),
                                  child: Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                                ),
                                CircleAvatar(
                                  maxRadius: 60,
                                  backgroundImage: AssetImage('images/img_9.png'),
                                ),
                                SizedBox(height: 5,),
                                Text("Dr. Shouey", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),),
                                SizedBox(height: 5,),
                                Text("Specialist Cardiology", style: TextStyle(
                                  color: Colors.green
                                ),),
                              ],
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 190, top: 10),
                                  child: Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                                ),
                                CircleAvatar(
                                  maxRadius: 60,
                                  backgroundImage: AssetImage('images/img_17.png'),
                                ),
                                SizedBox(height: 5,),
                                Text("Dr. Christenfeld", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                                SizedBox(height: 5,),
                                Text("Specialist Cancer", style: TextStyle(
                                    color: Colors.green
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 190, top: 10),
                                  child: Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                                ),
                                CircleAvatar(
                                  maxRadius: 60,
                                  backgroundImage: AssetImage('images/img_9.png'),
                                ),
                                SizedBox(height: 5,),
                                Text("Dr. Shouey", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                                SizedBox(height: 5,),
                                Text("Specialist Cardiology", style: TextStyle(
                                    color: Colors.green
                                ),),
                              ],
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 190, top: 10),
                                  child: Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                                ),
                                CircleAvatar(
                                  maxRadius: 60,
                                  backgroundImage: AssetImage('images/img_17.png'),
                                ),
                                SizedBox(height: 5,),
                                Text("Dr. Christenfeld", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                                SizedBox(height: 5,),
                                Text("Specialist Cancer", style: TextStyle(
                                    color: Colors.green
                                ),),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  FeatureDoctor(),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
