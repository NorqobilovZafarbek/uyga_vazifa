import 'package:flutter/material.dart';

import '../scr/decrement.dart';
import '../scr/home_page.dart';
import '../scr/incerement_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        RouterPath.homePage: (context) => const HomePage(),
        RouterPath.inCerement: (context) => const InCerementPage(),
        RouterPath.decrement: (context) => const DecrementPage(),
      },
      initialRoute: "/",
    );
  }
}



abstract class RouterPath {
  static const homePage = "/";
  static const inCerement = "/inCerement";
  static const decrement = "/decrement";
}