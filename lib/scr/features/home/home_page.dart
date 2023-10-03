import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uygavazifa/common/bloc/bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter App"),
            ),
            body: Column(
              children: [
                Text(
                  state.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 35,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<CounterBloc>(context).add(CounterIncEvent());
                      },
                      icon: const Icon(Icons.plus_one),
                    ),
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<CounterBloc>(context).add(CounterDecEvent());
                      },
                      icon: const Icon(Icons.exposure_minus_1),
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


