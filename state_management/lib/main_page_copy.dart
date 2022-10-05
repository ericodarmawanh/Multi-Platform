import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/second_page_copy.dart';

import 'bloc/counter_bloc.dart';

class MainPageCopy extends StatelessWidget {
  const MainPageCopy({Key? key}) : super(key: key);

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
                  context.read<CounterBloc>().add(const Increment());
                },
                child: const Text('Increment')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push<int>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPageCopy(),
                      ));
                },
                child: const Text('Go to Second Page')),
          ],
        ),
      ),
    );
  }
}
