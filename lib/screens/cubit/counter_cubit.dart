import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  int value;

  CounterCubit({this.value = 0}) : super(value);

  void increment() => emit(value++);

  void decrement() => emit(value--);
}
