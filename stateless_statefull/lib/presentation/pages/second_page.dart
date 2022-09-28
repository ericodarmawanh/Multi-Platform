import 'package:flutter/material.dart';
import 'package:stateless_statefull/presentation/widgets/number_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberWidget(
              number: number,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = number + 1;
                  });
                },
                child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}
