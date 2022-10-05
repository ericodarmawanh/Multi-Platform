import 'package:contoh_navigasi/temp.dart';
import 'package:contoh_navigasi/tombol.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tombol(
              text: 'History Page',
              onPressed: () {
                context.goNamed('history');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Tombol(
                text: 'Profile Page',
                onPressed: () {
                  context.goNamed('profile');
                }),
            const SizedBox(
              height: 20,
            ),
            Tombol(
                text: 'Log Out',
                onPressed: () {
                  isLogin = false;
                  context.goNamed('login');
                })
          ],
        ),
      ),
    );
  }
}
