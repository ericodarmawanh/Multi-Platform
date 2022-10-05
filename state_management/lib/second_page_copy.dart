import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class SecondPageCopy extends StatelessWidget {
  const SecondPageCopy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state is CounterRunning ? '${state.number}' : '-',
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(const Increment(amount: 2));
                },
                child: const Text('Increment')),
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
