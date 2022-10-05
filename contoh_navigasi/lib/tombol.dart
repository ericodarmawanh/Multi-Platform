import 'package:flutter/material.dart';

class Tombol extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const Tombol({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
