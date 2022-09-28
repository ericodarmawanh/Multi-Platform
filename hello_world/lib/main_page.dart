import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tampilan = Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to flutter class'),
      ),
      body: const Center(child: Text('Hello World')),
    );

    return tampilan;
  }
}
