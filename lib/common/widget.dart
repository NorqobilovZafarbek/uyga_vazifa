import 'package:flutter/material.dart';
import 'package:uygavazifa/common/initialization/storage_initalization.dart';
import 'package:uygavazifa/scr/features/home/home_page.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const HomePage()
    );
  }
}
