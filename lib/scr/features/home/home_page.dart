import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Example"),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Count: $state',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () => context.read<CounterCubit>().decrement(),
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(width: 16),
                    FloatingActionButton(
                      onPressed: () => context.read<CounterCubit>().inCerement(),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
