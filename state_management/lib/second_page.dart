import 'dart:developer';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final int number;

  const SecondPage({Key? key, required this.number}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late int number;

  @override
  void initState() {
    super.initState();

    number = widget.number;
  }

  @override
  Widget build(BuildContext context) {
    log('Build Main Page');

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Main Page'),
      // ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$number',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Text('Increment')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop<int>(context, number);
                },
                child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}
