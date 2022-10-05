import 'package:contoh_navigasi/tombol.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tidak ada page nya'),
            const SizedBox(
              height: 20,
            ),
            Tombol(
                text: 'Kembali ke login',
                onPressed: () {
                  context.goNamed('login');
                })
          ],
        ),
      ),
    );
  }
}
