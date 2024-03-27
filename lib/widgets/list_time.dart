import 'package:flutter/material.dart';

class ListTime extends StatelessWidget {
  const ListTime({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    )],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Today, 23 Feb", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("No Slot Available"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Tomorrow, 24 Feb", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                        Text("9 Slot Available", style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Thursday, 25 Feb", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("10 Slot Available"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(strokeAlign:BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Friday, 26 Feb", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("10 Slot Available"),
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
