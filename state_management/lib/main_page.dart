import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:state_management/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;

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
                onPressed: () async {
                  number = await Navigator.push<int>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(number: number),
                          )) ??
                      number;

                  setState(() {});
                },
                child: const Text('Go to Second Page')),
          ],
        ),
      ),
    );
  }
}
