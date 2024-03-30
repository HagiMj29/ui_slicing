import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_slicing/widgets/category_widget.dart';
import 'package:ui_slicing/widgets/popular_home_doctor.dart';


class PopularDoctorPage extends StatelessWidget {
  const PopularDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('images/img_26.png', fit:BoxFit.cover ,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Icon(Icons.search)
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Doctor", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("See all >")
                    ],
                  ),
                  SizedBox(height: 20,),
                  PopularDoctor(),
                  SizedBox(height: 20,),
                  Text("Category",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  CategoryDoctor(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
