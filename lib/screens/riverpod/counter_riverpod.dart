import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider<CounterRiverpod>(
  (ref) {
    return CounterRiverpod(0);
  },
);

class CounterRiverpod extends ChangeNotifier {
  int value;

  CounterRiverpod(this.value);

  void increment() {
    value++;
    notifyListeners();
  }

  void decrement() {
    value--;
    notifyListeners();
  }
}
