import 'package:flutter/material.dart';

class SecondPageCopy extends StatefulWidget {
  const SecondPageCopy({Key? key}) : super(key: key);

  @override
  State<SecondPageCopy> createState() => _SecondPageCopyState();
}

class _SecondPageCopyState extends State<SecondPageCopy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.pop<int>(context);
                },
                child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}
