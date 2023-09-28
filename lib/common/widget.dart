import 'package:flutter/material.dart';
import 'package:uygavazifa/common/initialization/storage_initalization.dart';
import 'package:uygavazifa/scr/login.dart';

import '../scr/sign_up.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  bool isLogged = $storage.getBool("isLogged") ?? false;
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: isLogged ? const LoginUp() : const SignUp(),
    );
  }
}
