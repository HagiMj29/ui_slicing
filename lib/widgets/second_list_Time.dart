import 'package:flutter/material.dart';

class SecondListTime extends StatelessWidget {
  const SecondListTime({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: List.generate(7, (index) {
        return Center(
          heightFactor: 12,
          child: Text(
            'Item $index',
          ),
        );
      }),
    );
  }
}
