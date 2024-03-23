import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 200,
        child: Row(
          children: [
            Image.asset('images/img_9.png'),
            Image.asset('images/img_9.png'),
            Image.asset('images/img_9.png'),
            Image.asset('images/img_9.png'),
            Image.asset('images/img_9.png'),
            Image.asset('images/img_9.png'),
            Image.asset('images/img_9.png'),
          ],
        ),
      ),
    );
  }

  Widget buildCard()=> Container(
    height: 200,
    color: Colors.red,
    child: Column(
      children: [
        Image.asset('images/img_9.png', scale: 2,)
      ],
    ),
  );
}
