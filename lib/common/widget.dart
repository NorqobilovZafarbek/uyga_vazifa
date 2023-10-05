import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uygavazifa/scr/features/counter_cubit.dart';
import 'package:uygavazifa/scr/features/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
          theme: ThemeData(useMaterial3: true), home: const HomePage()),
    );
  }
}
