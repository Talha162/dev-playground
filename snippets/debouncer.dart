// Debounce helper for Flutter
import 'dart:async';

class Debouncer {
  Debouncer(this.ms);
  final int ms;
  Timer? _t;
  void run(void Function() action) {
    _t?.cancel();
    _t = Timer(Duration(milliseconds: ms), action);
  }
}
