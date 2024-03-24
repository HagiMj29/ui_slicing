import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureDoctor extends StatelessWidget {
  const FeatureDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 260,
        child: Row(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.all(Radius.circular(12)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Icon(Icons.favorite,color: Colors.red,),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Icon(Icons.star,color: Colors.yellow,),
                        ),
                        Text('3.7')
                      ],
                    ),
                    Image.asset('images/img_20.png', height: 150,),
                    Text('Dr. Cirk', style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(CupertinoIcons.money_dollar, color: Colors.green,),
                        Text('22.00/hours')
                      ]
                    )
                  ],
                ),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(12)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite,color: Colors.red,),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Icon(Icons.star,color: Colors.yellow,),
                          ),
                          Text('3.0')
                        ],
                      ),
                      Image.asset('images/img_21.png', height: 150,),
                      Text('Dr. Strain', style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(CupertinoIcons.money_dollar, color: Colors.green,),
                            Text('22.00/hours')
                          ]
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(12)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite,color: Colors.red,),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Icon(Icons.star,color: Colors.yellow,),
                          ),
                          Text('2.9')
                        ],
                      ),
                      Image.asset('images/img_22.png', height: 150,),
                      Text('Dr. Lachinet', style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(CupertinoIcons.money_dollar, color: Colors.green,),
                            Text('29.00/hours')
                          ]
                      )
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
