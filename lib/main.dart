import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'common/widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DateStorage(),
      child: const App(),
    ),
  );
}

class DateStorage extends ChangeNotifier {
  int value = 0;

  void inCerement() {
    value += 1;
    notifyListeners();
  }

  void decrement() {
    value -= 1;
    notifyListeners();
  }
}
