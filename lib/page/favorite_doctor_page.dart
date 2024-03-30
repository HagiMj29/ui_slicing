import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteDoctorPage extends StatelessWidget {
  const FavoriteDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/img_26.png', fit: BoxFit.cover, height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
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
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                  ),
                  children: [

                  ],
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
