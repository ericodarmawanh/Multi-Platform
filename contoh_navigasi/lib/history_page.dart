import 'package:contoh_navigasi/tombol.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tombol(
              text: 'Detail Page',
              onPressed: () {
                context.goNamed('detail');
              },
            ),
          ],
        ),
      ),
    );
  }
}
