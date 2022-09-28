import 'package:flutter/material.dart';
import 'package:hello_world/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = const MaterialApp(home: MainPage());

    return materialApp;
  }
}
