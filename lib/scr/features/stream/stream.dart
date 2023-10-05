import 'dart:async';

class NumberData {
  NumberData() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _controller.add(_count);
      _count++;
    });
  }
  int _count = 1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}


