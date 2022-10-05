import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_management/second_page_copy.dart';

class MainPageCopy extends StatefulWidget {
  const MainPageCopy({Key? key}) : super(key: key);

  @override
  State<MainPageCopy> createState() => _MainPageCopyState();
}

class _MainPageCopyState extends State<MainPageCopy> {
  @override
  Widget build(BuildContext context) {
    log('Build Main Page');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '0',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Increment')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push<int>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPageCopy(),
                      ));
                },
                child: const Text('Go to Second Page')),
          ],
        ),
      ),
    );
  }
}
