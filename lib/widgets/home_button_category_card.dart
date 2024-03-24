import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      'images/img_13.png',scale: 2,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      'images/img_14.png',scale: 2,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      'images/img_15.png',scale: 2,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      'images/img_16.png',scale: 2,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
