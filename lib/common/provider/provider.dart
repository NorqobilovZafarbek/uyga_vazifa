import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int a = 0;
  int b = 0;

  void inCerementOne() {
    a += 1;
    notifyListeners();
  }

  void inCerementTwo() {
    b += 1;
    notifyListeners();
  }
}
