import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Text('${state.number}');
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(Increment());
                        },
                        child: const Text('INC')),
                    const SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(Decrement());
                        },
                        child: const Text('DEC')),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(Reset());
                    },
                    child: const Text('RESET')),
              ],
            ),
          ),
          const SafeArea(
            child: Align(
                alignment: Alignment(0, -0.9),
                child: Text(
                  'Counter App',
                )),
          ),
          SafeArea(
            child: Align(
                alignment: const Alignment(-0.9, -0.9),
                child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_rounded))),
          )
        ],
      ),
    );
  }
}
