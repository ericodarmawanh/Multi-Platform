import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  final int number;

  const NumberWidget({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Text('$number'),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 10, 10),
          width: 100,
          height: 100,
          color: Colors.red,
          child: const Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
