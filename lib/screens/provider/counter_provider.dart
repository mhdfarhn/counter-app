import 'package:flutter/widgets.dart';

class CounterProvider extends ChangeNotifier {
  int value;

  CounterProvider({this.value = 0});

  void increment() {
    value++;
    notifyListeners();
  }

  void decrement() {
    value--;
    notifyListeners();
  }
}
