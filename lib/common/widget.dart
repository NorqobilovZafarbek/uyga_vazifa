import 'package:flutter/material.dart';

import '../scr/home_page.dart';
import 'localization/app_localization.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {

  void a(){
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Localization App",
      theme: ThemeData(useMaterial3: true),
      localizationsDelegates: Applocalizations.localizationsDelegates,
      supportedLocales: Applocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
