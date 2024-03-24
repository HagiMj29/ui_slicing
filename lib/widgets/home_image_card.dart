import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'images/img_9.png',
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 30),
                    child: Container(
                        color: Colors.red,
                        child: Image.asset('images/img_10.png', scale: 2,)),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'images/img_11.png',
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85, top: 30),
                    child: Container(
                        color: Colors.red,
                        child: Image.asset('images/img_10.png', scale: 2,)),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'images/img_12.png',
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85, top: 30),
                    child: Container(
                        color: Colors.red,
                        child: Image.asset('images/img_10.png', scale: 2,)),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'images/img_9.png',
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 30),
                    child: Container(
                        color: Colors.red,
                        child: Image.asset('images/img_10.png', scale: 2,)),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'images/img_11.png',
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85, top: 30),
                    child: Container(
                        color: Colors.red,
                        child: Image.asset('images/img_10.png', scale: 2,)),
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'images/img_12.png',
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85, top: 30),
                    child: Container(
                        color: Colors.red,
                        child: Image.asset('images/img_10.png', scale: 2,)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
