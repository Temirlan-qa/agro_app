import 'dart:async';

class Debouncer {
  final Duration debounceTime;
  Timer? _timer;

  Debouncer({this.debounceTime = const Duration(milliseconds: 100)});

  void debounce(Function() action) {
    _timer?.cancel();
    _timer = Timer(debounceTime, action);
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
